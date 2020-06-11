Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CD4219F29
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 13:40:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E78D06180F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 11:40:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DACA36606D; Thu,  9 Jul 2020 11:40:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A72B66460;
	Thu,  9 Jul 2020 11:34:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E2623616E2
 for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2020 13:40:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CF672664F9; Thu, 11 Jun 2020 13:40:17 +0000 (UTC)
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by lists.linaro.org (Postfix) with ESMTPS id BA68D616E2
 for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2020 13:40:12 +0000 (UTC)
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJjNDlhNSIsICJsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-east-1.postgun.com with SMTP id
 5ee23432a3d8a44743babdf3 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 11 Jun 2020 13:40:02
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 811FAC4339C; Thu, 11 Jun 2020 13:40:01 +0000 (UTC)
Received: from [192.168.1.102] (unknown [183.83.143.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: charante)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 823FBC433CA;
 Thu, 11 Jun 2020 13:39:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 823FBC433CA
To: Sumit Semwal <sumit.semwal@linaro.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>
From: Charan Teja Kalla <charante@codeaurora.org>
Message-ID: <316a5cf9-ca71-6506-bf8b-e79ded9055b2@codeaurora.org>
Date: Thu, 11 Jun 2020 19:09:55 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Thu, 09 Jul 2020 11:34:07 +0000
Cc: Linaro MM SIG <linaro-mm-sig@lists.linaro.org>, vinmenon@codeaurora.org,
 LKML <linux-kernel@vger.kernel.org>, stable@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH] dmabuf: use spinlock to access dmabuf->name
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhlcmUgZXhpc3RzIGEgc2xlZXAtd2hpbGUtYXRvbWljIGJ1ZyB3aGlsZSBhY2Nlc3NpbmcgdGhl
IGRtYWJ1Zi0+bmFtZQp1bmRlciBtdXRleCBpbiB0aGUgZG1hYnVmZnNfZG5hbWUoKS4gVGhpcyBp
cyBjYXVzZWQgZnJvbSB0aGUgU0VMaW51eApwZXJtaXNzaW9ucyBjaGVja3Mgb24gYSBwcm9jZXNz
IHdoZXJlIGl0IHRyaWVzIHRvIHZhbGlkYXRlIHRoZSBpbmhlcml0ZWQKZmlsZXMgZnJvbSBmb3Jr
KCkgYnkgdHJhdmVyc2luZyB0aGVtIHRocm91Z2ggaXRlcmF0ZV9mZCgpICh3aGljaAp0cmF2ZXJz
ZSBmaWxlcyB1bmRlciBzcGluX2xvY2spIGFuZCBjYWxsCm1hdGNoX2ZpbGUoc2VjdXJpdHkvc2Vs
aW51eC9ob29rcy5jKSB3aGVyZSB0aGUgcGVybWlzc2lvbiBjaGVja3MgaGFwcGVuLgpUaGlzIGF1
ZGl0IGluZm9ybWF0aW9uIGlzIGxvZ2dlZCB1c2luZyBkdW1wX2NvbW1vbl9hdWRpdF9kYXRhKCkg
d2hlcmUgaXQKY2FsbHMgZF9wYXRoKCkgdG8gZ2V0IHRoZSBmaWxlIHBhdGggbmFtZS4gSWYgdGhl
IGZpbGUgY2hlY2sgaGFwcGVuIG9uCnRoZSBkbWFidWYncyBmZCwgdGhlbiBpdCBlbmRzIHVwIGlu
IC0+ZG1hYnVmZnNfZG5hbWUoKSBhbmQgdXNlIG11dGV4IHRvCmFjY2VzcyBkbWFidWYtPm5hbWUu
IFRoZSBmbG93IHdpbGwgYmUgbGlrZSBiZWxvdzoKZmx1c2hfdW5hdXRob3JpemVkX2ZpbGVzKCkK
ICBpdGVyYXRlX2ZkKCkKICAgIHNwaW5fbG9jaygpIC0tPiBTdGFydCBvZiB0aGUgYXRvbWljIHNl
Y3Rpb24uCiAgICAgIG1hdGNoX2ZpbGUoKQogICAgICAgIGZpbGVfaGFzX3Blcm0oKQogICAgICAg
ICAgYXZjX2hhc19wZXJtKCkKICAgICAgICAgICAgYXZjX2F1ZGl0KCkKICAgICAgICAgICAgICBz
bG93X2F2Y19hdWRpdCgpCgkgICAgICAgIGNvbW1vbl9sc21fYXVkaXQoKQoJCSAgZHVtcF9jb21t
b25fYXVkaXRfZGF0YSgpCgkJICAgIGF1ZGl0X2xvZ19kX3BhdGgoKQoJCSAgICAgIGRfcGF0aCgp
CiAgICAgICAgICAgICAgICAgICAgICAgIGRtYWJ1ZmZzX2RuYW1lKCkKICAgICAgICAgICAgICAg
ICAgICAgICAgICBtdXRleF9sb2NrKCktLT4gU2xlZXAgd2hpbGUgYXRvbWljLgoKQ2FsbCB0cmFj
ZSBjYXB0dXJlZCAob24gNC4xOSBrZXJuZWxzKSBpcyBiZWxvdzoKX19fbWlnaHRfc2xlZXArMHgy
MDQvMHgyMDgKX19taWdodF9zbGVlcCsweDUwLzB4ODgKX19tdXRleF9sb2NrX2NvbW1vbisweDVj
LzB4MTA2OApfX211dGV4X2xvY2tfY29tbW9uKzB4NWMvMHgxMDY4Cm11dGV4X2xvY2tfbmVzdGVk
KzB4NDAvMHg1MApkbWFidWZmc19kbmFtZSsweGEwLzB4MTcwCmRfcGF0aCsweDg0LzB4MjkwCmF1
ZGl0X2xvZ19kX3BhdGgrMHg3NC8weDEzMApjb21tb25fbHNtX2F1ZGl0KzB4MzM0LzB4NmU4CnNs
b3dfYXZjX2F1ZGl0KzB4YjgvMHhmOAphdmNfaGFzX3Blcm0rMHgxNTQvMHgyMTgKZmlsZV9oYXNf
cGVybSsweDcwLzB4MTgwCm1hdGNoX2ZpbGUrMHg2MC8weDc4Cml0ZXJhdGVfZmQrMHgxMjgvMHgx
NjgKc2VsaW51eF9icHJtX2NvbW1pdHRpbmdfY3JlZHMrMHgxNzgvMHgyNDgKc2VjdXJpdHlfYnBy
bV9jb21taXR0aW5nX2NyZWRzKzB4MzAvMHg0OAppbnN0YWxsX2V4ZWNfY3JlZHMrMHgxYy8weDY4
CmxvYWRfZWxmX2JpbmFyeSsweDNhNC8weDE0ZTAKc2VhcmNoX2JpbmFyeV9oYW5kbGVyKzB4YjAv
MHgxZTAKClNvLCB1c2Ugc3BpbmxvY2sgdG8gYWNjZXNzIGRtYWJ1Zi0+bmFtZSB0byBhdm9pZCBz
bGVlcC13aGlsZS1hdG9taWMuCgpDYzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+IFs1LjMrXQpT
aWduZWQtb2ZmLWJ5OiBDaGFyYW4gVGVqYSBSZWRkeSA8Y2hhcmFudGVAY29kZWF1cm9yYS5vcmc+
Ci0tLQogZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDEzICsrKysrKystLS0tLS0KIGluY2x1
ZGUvbGludXgvZG1hLWJ1Zi5oICAgfCAgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9u
cygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1
Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwppbmRleCAwMWNlMTI1Li4yZTA0NTZjIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtYnVmLmMKQEAgLTQ1LDEwICs0NSwxMCBAQCBzdGF0aWMgY2hhciAqZG1hYnVmZnNfZG5h
bWUoc3RydWN0IGRlbnRyeSAqZGVudHJ5LCBjaGFyICpidWZmZXIsIGludCBidWZsZW4pCiAJc2l6
ZV90IHJldCA9IDA7CiAKIAlkbWFidWYgPSBkZW50cnktPmRfZnNkYXRhOwotCWRtYV9yZXN2X2xv
Y2soZG1hYnVmLT5yZXN2LCBOVUxMKTsKKwlzcGluX2xvY2soJmRtYWJ1Zi0+bmFtZV9sb2NrKTsK
IAlpZiAoZG1hYnVmLT5uYW1lKQogCQlyZXQgPSBzdHJsY3B5KG5hbWUsIGRtYWJ1Zi0+bmFtZSwg
RE1BX0JVRl9OQU1FX0xFTik7Ci0JZG1hX3Jlc3ZfdW5sb2NrKGRtYWJ1Zi0+cmVzdik7CisJc3Bp
bl91bmxvY2soJmRtYWJ1Zi0+bmFtZV9sb2NrKTsKIAogCXJldHVybiBkeW5hbWljX2RuYW1lKGRl
bnRyeSwgYnVmZmVyLCBidWZsZW4sICIvJXM6JXMiLAogCQkJICAgICBkZW50cnktPmRfbmFtZS5u
YW1lLCByZXQgPiAwID8gbmFtZSA6ICIiKTsKQEAgLTMzNSw3ICszMzUsNyBAQCBzdGF0aWMgbG9u
ZyBkbWFfYnVmX3NldF9uYW1lKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIGNvbnN0IGNoYXIgX191
c2VyICpidWYpCiAJaWYgKElTX0VSUihuYW1lKSkKIAkJcmV0dXJuIFBUUl9FUlIobmFtZSk7CiAK
LQlkbWFfcmVzdl9sb2NrKGRtYWJ1Zi0+cmVzdiwgTlVMTCk7CisJc3Bpbl9sb2NrKCZkbWFidWYt
Pm5hbWVfbG9jayk7CiAJaWYgKCFsaXN0X2VtcHR5KCZkbWFidWYtPmF0dGFjaG1lbnRzKSkgewog
CQlyZXQgPSAtRUJVU1k7CiAJCWtmcmVlKG5hbWUpOwpAQCAtMzQ1LDcgKzM0NSw3IEBAIHN0YXRp
YyBsb25nIGRtYV9idWZfc2V0X25hbWUoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwgY29uc3QgY2hh
ciBfX3VzZXIgKmJ1ZikKIAlkbWFidWYtPm5hbWUgPSBuYW1lOwogCiBvdXRfdW5sb2NrOgotCWRt
YV9yZXN2X3VubG9jayhkbWFidWYtPnJlc3YpOworCXNwaW5fdW5sb2NrKCZkbWFidWYtPm5hbWVf
bG9jayk7CiAJcmV0dXJuIHJldDsKIH0KIApAQCAtNDA1LDEwICs0MDUsMTAgQEAgc3RhdGljIHZv
aWQgZG1hX2J1Zl9zaG93X2ZkaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVjdCBmaWxlICpm
aWxlKQogCS8qIERvbid0IGNvdW50IHRoZSB0ZW1wb3JhcnkgcmVmZXJlbmNlIHRha2VuIGluc2lk
ZSBwcm9jZnMgc2VxX3Nob3cgKi8KIAlzZXFfcHJpbnRmKG0sICJjb3VudDpcdCVsZFxuIiwgZmls
ZV9jb3VudChkbWFidWYtPmZpbGUpIC0gMSk7CiAJc2VxX3ByaW50ZihtLCAiZXhwX25hbWU6XHQl
c1xuIiwgZG1hYnVmLT5leHBfbmFtZSk7Ci0JZG1hX3Jlc3ZfbG9jayhkbWFidWYtPnJlc3YsIE5V
TEwpOworCXNwaW5fbG9jaygmZG1hYnVmLT5uYW1lX2xvY2spOwogCWlmIChkbWFidWYtPm5hbWUp
CiAJCXNlcV9wcmludGYobSwgIm5hbWU6XHQlc1xuIiwgZG1hYnVmLT5uYW1lKTsKLQlkbWFfcmVz
dl91bmxvY2soZG1hYnVmLT5yZXN2KTsKKwlzcGluX3VubG9jaygmZG1hYnVmLT5uYW1lX2xvY2sp
OwogfQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IGZpbGVfb3BlcmF0aW9ucyBkbWFfYnVmX2ZvcHMg
PSB7CkBAIC01NDYsNiArNTQ2LDcgQEAgc3RydWN0IGRtYV9idWYgKmRtYV9idWZfZXhwb3J0KGNv
bnN0IHN0cnVjdCBkbWFfYnVmX2V4cG9ydF9pbmZvICpleHBfaW5mbykKIAlkbWFidWYtPnNpemUg
PSBleHBfaW5mby0+c2l6ZTsKIAlkbWFidWYtPmV4cF9uYW1lID0gZXhwX2luZm8tPmV4cF9uYW1l
OwogCWRtYWJ1Zi0+b3duZXIgPSBleHBfaW5mby0+b3duZXI7CisJc3Bpbl9sb2NrX2luaXQoJmRt
YWJ1Zi0+bmFtZV9sb2NrKTsKIAlpbml0X3dhaXRxdWV1ZV9oZWFkKCZkbWFidWYtPnBvbGwpOwog
CWRtYWJ1Zi0+Y2JfZXhjbC5wb2xsID0gZG1hYnVmLT5jYl9zaGFyZWQucG9sbCA9ICZkbWFidWYt
PnBvbGw7CiAJZG1hYnVmLT5jYl9leGNsLmFjdGl2ZSA9IGRtYWJ1Zi0+Y2Jfc2hhcmVkLmFjdGl2
ZSA9IDA7CmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvbGlu
dXgvZG1hLWJ1Zi5oCmluZGV4IGFiMGMxNTYuLjkzMTA4ZmQgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUv
bGludXgvZG1hLWJ1Zi5oCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oCkBAIC0zMTEsNiAr
MzExLDcgQEAgc3RydWN0IGRtYV9idWYgewogCXZvaWQgKnZtYXBfcHRyOwogCWNvbnN0IGNoYXIg
KmV4cF9uYW1lOwogCWNvbnN0IGNoYXIgKm5hbWU7CisJc3BpbmxvY2tfdCBuYW1lX2xvY2s7CiAJ
c3RydWN0IG1vZHVsZSAqb3duZXI7CiAJc3RydWN0IGxpc3RfaGVhZCBsaXN0X25vZGU7CiAJdm9p
ZCAqcHJpdjsKLS0gClRoZSBRdWFsY29tbSBJbm5vdmF0aW9uIENlbnRlciwgSW5jLiBpcyBhIG1l
bWJlciBvZiB0aGUgQ29kZSBBdXJvcmEgRm9ydW0sIGEgTGludXggRm91bmRhdGlvbiBDb2xsYWJv
cmF0aXZlIFByb2plY3QKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1t
bS1zaWcK
