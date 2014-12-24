module Paths_haskell_learning (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch


version :: Version
version = Version {versionBranch = [1,0], versionTags = []}
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/jun/Library/Haskell/bin"
libdir     = "/Users/jun/Library/Haskell/ghc-7.8.3-x86_64/lib/haskell-learning-1.0"
datadir    = "/Users/jun/Library/Haskell/share/ghc-7.8.3-x86_64/haskell-learning-1.0"
libexecdir = "/Users/jun/Library/Haskell/libexec"
sysconfdir = "/Users/jun/Library/Haskell/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "haskell_learning_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "haskell_learning_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "haskell_learning_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "haskell_learning_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "haskell_learning_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
