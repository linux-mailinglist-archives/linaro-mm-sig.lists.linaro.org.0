Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA642EAD6E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Jan 2021 15:37:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CF2E76672A
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Jan 2021 14:37:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C3D696672D; Tue,  5 Jan 2021 14:37:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D388866726;
	Tue,  5 Jan 2021 14:37:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CA5F566723
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Jan 2021 14:37:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BB5D466726; Tue,  5 Jan 2021 14:37:10 +0000 (UTC)
Received: from m43-15.mailgun.net (m43-15.mailgun.net [69.72.43.15])
 by lists.linaro.org (Postfix) with ESMTPS id 8F78D66723
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Jan 2021 14:37:07 +0000 (UTC)
X-Mailgun-Sending-Ip: 69.72.43.15
X-Mailgun-Sid: WyJjNDlhNSIsICJsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-east-1.postgun.com with SMTP id
 5ff47988a1d2634b3f2c6430 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 05 Jan 2021 14:36:56
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 0AAA9C433ED; Tue,  5 Jan 2021 14:36:56 +0000 (UTC)
Received: from charante-linux.qualcomm.com (unknown [202.46.22.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: charante)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E3526C433CA;
 Tue,  5 Jan 2021 14:36:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E3526C433CA
From: Charan Teja Reddy <charante@codeaurora.org>
To: sumit.semwal@linaro.org,
	christian.koenig@amd.com,
	arnd@arndb.de
Date: Tue,  5 Jan 2021 20:06:39 +0530
Message-Id: <1609857399-31549-1-git-send-email-charante@codeaurora.org>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-kernel@vger.kernel.org, "# 5 . 4+" <stable@vger.kernel.org>,
 linaro-mm-sig@lists.linaro.org, Charan Teja Reddy <charante@codeaurora.org>,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH V2] dmabuf: fix use-after-free of dmabuf's
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
X2lub2RlIGlzIG5vdAphY2Nlc3NlZCBhZnRlciBpdCBpcyByZWxlYXNlZC4KCkNjOiA8c3RhYmxl
QHZnZXIua2VybmVsLm9yZz4gIyA1LjQrCkZpeGVzOiA0YWI1OWMzYzYzOGMgKCJkbWEtYnVmOiBN
b3ZlIGRtYV9idWZfcmVsZWFzZSgpIGZyb20gZm9wcyB0byBkZW50cnlfb3BzIikKQWNrZWQtYnk6
IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KU2lnbmVkLW9mZi1i
eTogQ2hhcmFuIFRlamEgUmVkZHkgPGNoYXJhbnRlQGNvZGVhdXJvcmEub3JnPgotLS0KIFYyOiBS
ZXNlbmRpbmcgd2l0aCBzdGFibGUgdGFncyBhbmQgQWNrcwoKIFYxOiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9wYXRjaHdvcmsvcGF0Y2gvMTM2MDExOC8KCiBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1
Zi5jIHwgMjEgKysrKysrKysrKysrKysrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwppbmRleCAwZWI4MGMxLi5hMTRkY2Ji
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCisrKyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtYnVmLmMKQEAgLTc2LDEwICs3Niw2IEBAIHN0YXRpYyB2b2lkIGRtYV9idWZfcmVs
ZWFzZShzdHJ1Y3QgZGVudHJ5ICpkZW50cnkpCiAKIAlkbWFidWYtPm9wcy0+cmVsZWFzZShkbWFi
dWYpOwogCi0JbXV0ZXhfbG9jaygmZGJfbGlzdC5sb2NrKTsKLQlsaXN0X2RlbCgmZG1hYnVmLT5s
aXN0X25vZGUpOwotCW11dGV4X3VubG9jaygmZGJfbGlzdC5sb2NrKTsKLQogCWlmIChkbWFidWYt
PnJlc3YgPT0gKHN0cnVjdCBkbWFfcmVzdiAqKSZkbWFidWZbMV0pCiAJCWRtYV9yZXN2X2Zpbmko
ZG1hYnVmLT5yZXN2KTsKIApAQCAtODgsNiArODQsMjIgQEAgc3RhdGljIHZvaWQgZG1hX2J1Zl9y
ZWxlYXNlKHN0cnVjdCBkZW50cnkgKmRlbnRyeSkKIAlrZnJlZShkbWFidWYpOwogfQogCitzdGF0
aWMgaW50IGRtYV9idWZfZmlsZV9yZWxlYXNlKHN0cnVjdCBpbm9kZSAqaW5vZGUsIHN0cnVjdCBm
aWxlICpmaWxlKQoreworCXN0cnVjdCBkbWFfYnVmICpkbWFidWY7CisKKwlpZiAoIWlzX2RtYV9i
dWZfZmlsZShmaWxlKSkKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwlkbWFidWYgPSBmaWxlLT5wcml2
YXRlX2RhdGE7CisKKwltdXRleF9sb2NrKCZkYl9saXN0LmxvY2spOworCWxpc3RfZGVsKCZkbWFi
dWYtPmxpc3Rfbm9kZSk7CisJbXV0ZXhfdW5sb2NrKCZkYl9saXN0LmxvY2spOworCisJcmV0dXJu
IDA7Cit9CisKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZGVudHJ5X29wZXJhdGlvbnMgZG1hX2J1Zl9k
ZW50cnlfb3BzID0gewogCS5kX2RuYW1lID0gZG1hYnVmZnNfZG5hbWUsCiAJLmRfcmVsZWFzZSA9
IGRtYV9idWZfcmVsZWFzZSwKQEAgLTQxMyw2ICs0MjUsNyBAQCBzdGF0aWMgdm9pZCBkbWFfYnVm
X3Nob3dfZmRpbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgc3RydWN0IGZpbGUgKmZpbGUpCiB9CiAK
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgZmlsZV9vcGVyYXRpb25zIGRtYV9idWZfZm9wcyA9IHsKKwku
cmVsZWFzZQk9IGRtYV9idWZfZmlsZV9yZWxlYXNlLAogCS5tbWFwCQk9IGRtYV9idWZfbW1hcF9p
bnRlcm5hbCwKIAkubGxzZWVrCQk9IGRtYV9idWZfbGxzZWVrLAogCS5wb2xsCQk9IGRtYV9idWZf
cG9sbCwKLS0gClFVQUxDT01NIElORElBLCBvbiBiZWhhbGYgb2YgUXVhbGNvbW0gSW5ub3ZhdGlv
biBDZW50ZXIsIEluYy4gaXMgYQptZW1iZXIgb2YgdGhlIENvZGUgQXVyb3JhIEZvcnVtLCBob3N0
ZWQgYnkgVGhlIExpbnV4IEZvdW5kYXRpb24KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
