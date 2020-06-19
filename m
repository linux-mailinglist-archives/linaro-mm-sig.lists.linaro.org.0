Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0212D219F81
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 14:00:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2731866566
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 12:00:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1C5EF665AA; Thu,  9 Jul 2020 12:00:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 89C66666EB;
	Thu,  9 Jul 2020 11:34:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E3BD16659D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 11:57:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CF17A665A5; Fri, 19 Jun 2020 11:57:40 +0000 (UTC)
Received: from mail29.static.mailgun.info (mail29.static.mailgun.info
 [104.130.122.29])
 by lists.linaro.org (Postfix) with ESMTPS id 5CD446659D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 11:57:36 +0000 (UTC)
X-Mailgun-Sending-Ip: 104.130.122.29
X-Mailgun-Sid: WyJjNDlhNSIsICJsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-west-2.postgun.com with SMTP id
 5eeca8253a8a8b20b8f37f0a (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 19 Jun 2020 11:57:25
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id BEB94C433CB; Fri, 19 Jun 2020 11:57:24 +0000 (UTC)
Received: from [192.168.1.102] (unknown [183.83.143.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: charante)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 39BB3C433C8;
 Fri, 19 Jun 2020 11:57:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 39BB3C433C8
To: Sumit Semwal <sumit.semwal@linaro.org>, michael.j.ruhl@intel.com,
 David.Laight@ACULAB.COM,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>
From: Charan Teja Kalla <charante@codeaurora.org>
Message-ID: <a83e7f0d-4e54-9848-4b58-e1acdbe06735@codeaurora.org>
Date: Fri, 19 Jun 2020 17:27:19 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Thu, 09 Jul 2020 11:34:07 +0000
Cc: Linaro MM SIG <linaro-mm-sig@lists.linaro.org>,
 LKML <linux-kernel@vger.kernel.org>
Subject: [Linaro-mm-sig] [PATCH v2] dmabuf: use spinlock to access
	dmabuf->name
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
Ci0tLQoKQ2hhbmdlcyBpbiBWMjogQWRkcmVzc2VkIHJldmlldyBjb21tZW50cyBmcm9tIFJ1aGws
IE1pY2hhZWwgSgoKQ2hhbmdlcyBpbiBWMTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcGF0Y2h3
b3JrL3BhdGNoLzEyNTUwNTUvCgogZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDExICsrKysr
KystLS0tCiBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaCAgIHwgIDEgKwogMiBmaWxlcyBjaGFuZ2Vk
LCA4IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9k
bWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKaW5kZXggMDFjZTEy
NS4uZDgxZDI5OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYworKysgYi9k
cml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCkBAIC00NSwxMCArNDUsMTAgQEAgc3RhdGljIGNoYXIg
KmRtYWJ1ZmZzX2RuYW1lKHN0cnVjdCBkZW50cnkgKmRlbnRyeSwgY2hhciAqYnVmZmVyLCBpbnQg
YnVmbGVuKQogCXNpemVfdCByZXQgPSAwOwogCiAJZG1hYnVmID0gZGVudHJ5LT5kX2ZzZGF0YTsK
LQlkbWFfcmVzdl9sb2NrKGRtYWJ1Zi0+cmVzdiwgTlVMTCk7CisJc3Bpbl9sb2NrKCZkbWFidWYt
Pm5hbWVfbG9jayk7CiAJaWYgKGRtYWJ1Zi0+bmFtZSkKIAkJcmV0ID0gc3RybGNweShuYW1lLCBk
bWFidWYtPm5hbWUsIERNQV9CVUZfTkFNRV9MRU4pOwotCWRtYV9yZXN2X3VubG9jayhkbWFidWYt
PnJlc3YpOworCXNwaW5fdW5sb2NrKCZkbWFidWYtPm5hbWVfbG9jayk7CiAKIAlyZXR1cm4gZHlu
YW1pY19kbmFtZShkZW50cnksIGJ1ZmZlciwgYnVmbGVuLCAiLyVzOiVzIiwKIAkJCSAgICAgZGVu
dHJ5LT5kX25hbWUubmFtZSwgcmV0ID4gMCA/IG5hbWUgOiAiIik7CkBAIC0zNDEsOCArMzQxLDEw
IEBAIHN0YXRpYyBsb25nIGRtYV9idWZfc2V0X25hbWUoc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwg
Y29uc3QgY2hhciBfX3VzZXIgKmJ1ZikKIAkJa2ZyZWUobmFtZSk7CiAJCWdvdG8gb3V0X3VubG9j
azsKIAl9CisJc3Bpbl9sb2NrKCZkbWFidWYtPm5hbWVfbG9jayk7CiAJa2ZyZWUoZG1hYnVmLT5u
YW1lKTsKIAlkbWFidWYtPm5hbWUgPSBuYW1lOworCXNwaW5fdW5sb2NrKCZkbWFidWYtPm5hbWVf
bG9jayk7CiAKIG91dF91bmxvY2s6CiAJZG1hX3Jlc3ZfdW5sb2NrKGRtYWJ1Zi0+cmVzdik7CkBA
IC00MDUsMTAgKzQwNywxMCBAQCBzdGF0aWMgdm9pZCBkbWFfYnVmX3Nob3dfZmRpbmZvKHN0cnVj
dCBzZXFfZmlsZSAqbSwgc3RydWN0IGZpbGUgKmZpbGUpCiAJLyogRG9uJ3QgY291bnQgdGhlIHRl
bXBvcmFyeSByZWZlcmVuY2UgdGFrZW4gaW5zaWRlIHByb2NmcyBzZXFfc2hvdyAqLwogCXNlcV9w
cmludGYobSwgImNvdW50Olx0JWxkXG4iLCBmaWxlX2NvdW50KGRtYWJ1Zi0+ZmlsZSkgLSAxKTsK
IAlzZXFfcHJpbnRmKG0sICJleHBfbmFtZTpcdCVzXG4iLCBkbWFidWYtPmV4cF9uYW1lKTsKLQlk
bWFfcmVzdl9sb2NrKGRtYWJ1Zi0+cmVzdiwgTlVMTCk7CisJc3Bpbl9sb2NrKCZkbWFidWYtPm5h
bWVfbG9jayk7CiAJaWYgKGRtYWJ1Zi0+bmFtZSkKIAkJc2VxX3ByaW50ZihtLCAibmFtZTpcdCVz
XG4iLCBkbWFidWYtPm5hbWUpOwotCWRtYV9yZXN2X3VubG9jayhkbWFidWYtPnJlc3YpOworCXNw
aW5fdW5sb2NrKCZkbWFidWYtPm5hbWVfbG9jayk7CiB9CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
ZmlsZV9vcGVyYXRpb25zIGRtYV9idWZfZm9wcyA9IHsKQEAgLTU0Niw2ICs1NDgsNyBAQCBzdHJ1
Y3QgZG1hX2J1ZiAqZG1hX2J1Zl9leHBvcnQoY29uc3Qgc3RydWN0IGRtYV9idWZfZXhwb3J0X2lu
Zm8gKmV4cF9pbmZvKQogCWRtYWJ1Zi0+c2l6ZSA9IGV4cF9pbmZvLT5zaXplOwogCWRtYWJ1Zi0+
ZXhwX25hbWUgPSBleHBfaW5mby0+ZXhwX25hbWU7CiAJZG1hYnVmLT5vd25lciA9IGV4cF9pbmZv
LT5vd25lcjsKKwlzcGluX2xvY2tfaW5pdCgmZG1hYnVmLT5uYW1lX2xvY2spOwogCWluaXRfd2Fp
dHF1ZXVlX2hlYWQoJmRtYWJ1Zi0+cG9sbCk7CiAJZG1hYnVmLT5jYl9leGNsLnBvbGwgPSBkbWFi
dWYtPmNiX3NoYXJlZC5wb2xsID0gJmRtYWJ1Zi0+cG9sbDsKIAlkbWFidWYtPmNiX2V4Y2wuYWN0
aXZlID0gZG1hYnVmLT5jYl9zaGFyZWQuYWN0aXZlID0gMDsKZGlmZiAtLWdpdCBhL2luY2x1ZGUv
bGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgKaW5kZXggYWIwYzE1Ni4u
OTMxMDhmZCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgKKysrIGIvaW5jbHVk
ZS9saW51eC9kbWEtYnVmLmgKQEAgLTMxMSw2ICszMTEsNyBAQCBzdHJ1Y3QgZG1hX2J1ZiB7CiAJ
dm9pZCAqdm1hcF9wdHI7CiAJY29uc3QgY2hhciAqZXhwX25hbWU7CiAJY29uc3QgY2hhciAqbmFt
ZTsKKwlzcGlubG9ja190IG5hbWVfbG9jazsKIAlzdHJ1Y3QgbW9kdWxlICpvd25lcjsKIAlzdHJ1
Y3QgbGlzdF9oZWFkIGxpc3Rfbm9kZTsKIAl2b2lkICpwcml2OwotLSAKVGhlIFF1YWxjb21tIElu
bm92YXRpb24gQ2VudGVyLCBJbmMuIGlzIGEgbWVtYmVyIG9mIHRoZSBDb2RlIEF1cm9yYSBGb3J1
bSwgYSBMaW51eCBGb3VuZGF0aW9uIENvbGxhYm9yYXRpdmUgUHJvamVjdApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
