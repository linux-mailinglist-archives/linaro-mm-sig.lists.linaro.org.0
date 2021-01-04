Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 877F82E9427
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Jan 2021 12:37:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A0336668D5
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Jan 2021 11:37:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8D784668D6; Mon,  4 Jan 2021 11:37:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9AFE9668D3;
	Mon,  4 Jan 2021 11:36:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6F88F668D1
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 Jan 2021 11:36:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 37FD1668D3; Mon,  4 Jan 2021 11:36:32 +0000 (UTC)
Received: from so254-31.mailgun.net (so254-31.mailgun.net [198.61.254.31])
 by lists.linaro.org (Postfix) with ESMTPS id 2A2B7668D1
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 Jan 2021 11:36:30 +0000 (UTC)
X-Mailgun-Sending-Ip: 198.61.254.31
X-Mailgun-Sid: WyJjNDlhNSIsICJsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-west-2.postgun.com with SMTP id
 5ff2fdbdd3eb3c36b432acf4 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 04 Jan 2021 11:36:29
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id EE5DEC433CA; Mon,  4 Jan 2021 11:36:28 +0000 (UTC)
Received: from charante-linux.qualcomm.com (unknown [202.46.22.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: charante)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 958A6C433C6;
 Mon,  4 Jan 2021 11:36:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 958A6C433C6
From: Charan Teja Reddy <charante@codeaurora.org>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, arnd@arndb.de,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org
Date: Mon,  4 Jan 2021 17:06:17 +0530
Message-Id: <1609760177-6083-1-git-send-email-charante@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, Charan Teja Reddy <charante@codeaurora.org>,
 linux-kernel@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH] dmabuf: fix use-after-free of dmabuf's
	file->f_inode
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SXQgaXMgb2JzZXJ2ZWQgJ3VzZS1hZnRlci1mcmVlJyBvbiB0aGUgZG1hYnVmJ3MgZmlsZS0+Zl9p
bm9kZSB3aXRoIHRoZQpyYWNlIGJldHdlZW4gY2xvc2luZyB0aGUgZG1hYnVmIGZpbGUgYW5kIHJl
YWRpbmcgdGhlIGRtYWJ1ZidzIGRlYnVnCmluZm8uCgpDb25zaWRlciB0aGUgYmVsb3cgc2NlbmFy
aW8gd2hlcmUgUDEgaXMgY2xvc2luZyB0aGUgZG1hX2J1ZiBmaWxlCmFuZCBQMiBpcyByZWFkaW5n
IHRoZSBkbWFfYnVmJ3MgZGVidWcgaW5mbyBpbiB0aGUgc3lzdGVtOgoKUDEJCQkJCQlQMgoJCQkJ
CWRtYV9idWZfZGVidWdfc2hvdygpCmRtYV9idWZfcHV0KCkKICBfX2ZwdXQoKQogICAgZmlsZS0+
Zl9vcC0+cmVsZWFzZSgpCiAgICBkcHV0KCkKICAgIC4uLi4KICAgICAgZGVudHJ5X3VubGlua19p
bm9kZSgpCiAgICAgICAgaXB1dChkZW50cnktPmRfaW5vZGUpCiAgICAgICAgKHdoZXJlIHRoZSBp
bm9kZSBpcyBmcmVlZCkKCQkJCQltdXRleF9sb2NrKCZkYl9saXN0LmxvY2spCgkJCQkJcmVhZCAn
ZG1hX2J1Zi0+ZmlsZS0+Zl9pbm9kZScKCQkJCQkodGhlIHNhbWUgaW5vZGUgaXMgZnJlZWQgYnkg
UDEpCgkJCQkJbXV0ZXhfdW5sb2NrKCZkYl9saXN0LmxvY2spCiAgICAgIGRlbnRyeS0+ZF9vcC0+
ZF9yZWxlYXNlKCktLT4KICAgICAgICBkbWFfYnVmX3JlbGVhc2UoKQogICAgICAgICAgLi4uLi4K
ICAgICAgICAgIG11dGV4X2xvY2soJmRiX2xpc3QubG9jaykKICAgICAgICAgIHJlbW92ZXMgdGhl
IGRtYWJ1ZiBmcm9tIHRoZSBsaXN0CiAgICAgICAgICBtdXRleF91bmxvY2soJmRiX2xpc3QubG9j
aykKCkluIHRoZSBhYm92ZSBzY2VuYXJpbywgd2hlbiBkbWFfYnVmX3B1dCgpIGlzIGNhbGxlZCBv
biBhIGRtYV9idWYsIGl0CmZpcnN0IGZyZWVzIHRoZSBkbWFfYnVmJ3MgZmlsZS0+Zl9pbm9kZSg9
ZGVudHJ5LT5kX2lub2RlKSBhbmQgdGhlbgpyZW1vdmVzIHRoaXMgZG1hX2J1ZiBmcm9tIHRoZSBz
eXN0ZW0gZGJfbGlzdC4gSW4gYmV0d2VlbiBQMiB0cmF2ZXJzaW5nCnRoZSBkYl9saXN0IHRyaWVz
IHRvIGFjY2VzcyB0aGlzIGRtYV9idWYncyBmaWxlLT5mX2lub2RlIHRoYXQgd2FzIGZyZWVkCmJ5
IFAxIHdoaWNoIGlzIGEgdXNlLWFmdGVyLWZyZWUgY2FzZS4KClNpbmNlLCBfX2ZwdXQoKSBjYWxs
cyBmX29wLT5yZWxlYXNlIGZpcnN0IGFuZCB0aGVuIGxhdGVyIGNhbGxzIHRoZQpkX29wLT5kX3Jl
bGVhc2UsIG1vdmUgdGhlIGRtYV9idWYncyBkYl9saXN0IHJlbW92YWwgZnJvbSBkX3JlbGVhc2Uo
KSB0bwpmX29wLT5yZWxlYXNlKCkuIFRoaXMgZW5zdXJlcyB0aGF0IGRtYV9idWYncyBmaWxlLT5m
X2lub2RlIGlzIG5vdAphY2Nlc3NlZCBhZnRlciBpdCBpcyByZWxlYXNlZC4KCkZpeGVzOiA0YWI1
OWMzYzYzOGMgKCJkbWEtYnVmOiBNb3ZlIGRtYV9idWZfcmVsZWFzZSgpIGZyb20gZm9wcyB0byBk
ZW50cnlfb3BzIikKU2lnbmVkLW9mZi1ieTogQ2hhcmFuIFRlamEgUmVkZHkgPGNoYXJhbnRlQGNv
ZGVhdXJvcmEub3JnPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCAyMSArKysrKysr
KysrKysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCA0IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJz
L2RtYS1idWYvZG1hLWJ1Zi5jCmluZGV4IDBlYjgwYzEuLmExNGRjYmIgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwpA
QCAtNzYsMTAgKzc2LDYgQEAgc3RhdGljIHZvaWQgZG1hX2J1Zl9yZWxlYXNlKHN0cnVjdCBkZW50
cnkgKmRlbnRyeSkKIAogCWRtYWJ1Zi0+b3BzLT5yZWxlYXNlKGRtYWJ1Zik7CiAKLQltdXRleF9s
b2NrKCZkYl9saXN0LmxvY2spOwotCWxpc3RfZGVsKCZkbWFidWYtPmxpc3Rfbm9kZSk7Ci0JbXV0
ZXhfdW5sb2NrKCZkYl9saXN0LmxvY2spOwotCiAJaWYgKGRtYWJ1Zi0+cmVzdiA9PSAoc3RydWN0
IGRtYV9yZXN2ICopJmRtYWJ1ZlsxXSkKIAkJZG1hX3Jlc3ZfZmluaShkbWFidWYtPnJlc3YpOwog
CkBAIC04OCw2ICs4NCwyMiBAQCBzdGF0aWMgdm9pZCBkbWFfYnVmX3JlbGVhc2Uoc3RydWN0IGRl
bnRyeSAqZGVudHJ5KQogCWtmcmVlKGRtYWJ1Zik7CiB9CiAKK3N0YXRpYyBpbnQgZG1hX2J1Zl9m
aWxlX3JlbGVhc2Uoc3RydWN0IGlub2RlICppbm9kZSwgc3RydWN0IGZpbGUgKmZpbGUpCit7CisJ
c3RydWN0IGRtYV9idWYgKmRtYWJ1ZjsKKworCWlmICghaXNfZG1hX2J1Zl9maWxlKGZpbGUpKQor
CQlyZXR1cm4gLUVJTlZBTDsKKworCWRtYWJ1ZiA9IGZpbGUtPnByaXZhdGVfZGF0YTsKKworCW11
dGV4X2xvY2soJmRiX2xpc3QubG9jayk7CisJbGlzdF9kZWwoJmRtYWJ1Zi0+bGlzdF9ub2RlKTsK
KwltdXRleF91bmxvY2soJmRiX2xpc3QubG9jayk7CisKKwlyZXR1cm4gMDsKK30KKwogc3RhdGlj
IGNvbnN0IHN0cnVjdCBkZW50cnlfb3BlcmF0aW9ucyBkbWFfYnVmX2RlbnRyeV9vcHMgPSB7CiAJ
LmRfZG5hbWUgPSBkbWFidWZmc19kbmFtZSwKIAkuZF9yZWxlYXNlID0gZG1hX2J1Zl9yZWxlYXNl
LApAQCAtNDEzLDYgKzQyNSw3IEBAIHN0YXRpYyB2b2lkIGRtYV9idWZfc2hvd19mZGluZm8oc3Ry
dWN0IHNlcV9maWxlICptLCBzdHJ1Y3QgZmlsZSAqZmlsZSkKIH0KIAogc3RhdGljIGNvbnN0IHN0
cnVjdCBmaWxlX29wZXJhdGlvbnMgZG1hX2J1Zl9mb3BzID0geworCS5yZWxlYXNlCT0gZG1hX2J1
Zl9maWxlX3JlbGVhc2UsCiAJLm1tYXAJCT0gZG1hX2J1Zl9tbWFwX2ludGVybmFsLAogCS5sbHNl
ZWsJCT0gZG1hX2J1Zl9sbHNlZWssCiAJLnBvbGwJCT0gZG1hX2J1Zl9wb2xsLAotLSAKUVVBTENP
TU0gSU5ESUEsIG9uIGJlaGFsZiBvZiBRdWFsY29tbSBJbm5vdmF0aW9uIENlbnRlciwgSW5jLiBp
cyBhCm1lbWJlciBvZiB0aGUgQ29kZSBBdXJvcmEgRm9ydW0sIGhvc3RlZCBieSBUaGUgTGludXgg
Rm91bmRhdGlvbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
