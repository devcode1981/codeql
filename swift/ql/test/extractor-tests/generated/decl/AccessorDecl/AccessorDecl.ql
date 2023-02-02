// generated by codegen/codegen.py
import codeql.swift.elements
import TestUtils

from
  AccessorDecl x, string hasName, string hasSelfParam, int getNumberOfParams, string hasBody,
  int getNumberOfGenericTypeParams, ModuleDecl getModule, int getNumberOfMembers,
  Type getInterfaceType, string isGetter, string isSetter, string isWillSet, string isDidSet,
  string isRead, string isModify, string isUnsafeAddress, string isUnsafeMutableAddress
where
  toBeTested(x) and
  not x.isUnknown() and
  (if x.hasName() then hasName = "yes" else hasName = "no") and
  (if x.hasSelfParam() then hasSelfParam = "yes" else hasSelfParam = "no") and
  getNumberOfParams = x.getNumberOfParams() and
  (if x.hasBody() then hasBody = "yes" else hasBody = "no") and
  getNumberOfGenericTypeParams = x.getNumberOfGenericTypeParams() and
  getModule = x.getModule() and
  getNumberOfMembers = x.getNumberOfMembers() and
  getInterfaceType = x.getInterfaceType() and
  (if x.isGetter() then isGetter = "yes" else isGetter = "no") and
  (if x.isSetter() then isSetter = "yes" else isSetter = "no") and
  (if x.isWillSet() then isWillSet = "yes" else isWillSet = "no") and
  (if x.isDidSet() then isDidSet = "yes" else isDidSet = "no") and
  (if x.isRead() then isRead = "yes" else isRead = "no") and
  (if x.isModify() then isModify = "yes" else isModify = "no") and
  (if x.isUnsafeAddress() then isUnsafeAddress = "yes" else isUnsafeAddress = "no") and
  if x.isUnsafeMutableAddress()
  then isUnsafeMutableAddress = "yes"
  else isUnsafeMutableAddress = "no"
select x, "hasName:", hasName, "hasSelfParam:", hasSelfParam, "getNumberOfParams:",
  getNumberOfParams, "hasBody:", hasBody, "getNumberOfGenericTypeParams:",
  getNumberOfGenericTypeParams, "getModule:", getModule, "getNumberOfMembers:", getNumberOfMembers,
  "getInterfaceType:", getInterfaceType, "isGetter:", isGetter, "isSetter:", isSetter, "isWillSet:",
  isWillSet, "isDidSet:", isDidSet, "isRead:", isRead, "isModify:", isModify, "isUnsafeAddress:",
  isUnsafeAddress, "isUnsafeMutableAddress:", isUnsafeMutableAddress