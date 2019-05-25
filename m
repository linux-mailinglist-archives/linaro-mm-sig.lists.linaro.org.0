Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E8632DD7
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jun 2019 12:44:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6E78D6106B
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jun 2019 10:44:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5AF9C610D5; Mon,  3 Jun 2019 10:44:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	MAILING_LIST_MULTI autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4EE936150E;
	Mon,  3 Jun 2019 10:43:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5E05D60BF3
 for <linaro-mm-sig@lists.linaro.org>; Sat, 25 May 2019 03:06:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4C10161524; Sat, 25 May 2019 03:06:26 +0000 (UTC)
Received: from mail3-163.sinamail.sina.com.cn (mail3-163.sinamail.sina.com.cn
 [202.108.3.163])
 by lists.linaro.org (Postfix) with SMTP id 05FB2610D5
 for <linaro-mm-sig@lists.linaro.org>; Sat, 25 May 2019 03:05:46 +0000 (UTC)
Received: from unknown (HELO localhost.localdomain)([114.253.229.186])
 by sina.com with ESMTP
 id 5CE8B105000061FB; Sat, 25 May 2019 11:05:42 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 539468394544
From: Hillf Danton <hdanton@sina.com>
To: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Sat, 25 May 2019 11:05:32 +0800
Message-Id: <20190416183841.1577-5-christian.koenig@amd.com>
In-Reply-To: <20190416183841.1577-1-christian.koenig@amd.com>
References: <20190416183841.1577-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
Archived-At: <https://lore.kernel.org/lkml/20190416183841.1577-5-christian.koenig@amd.com/>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Mon, 03 Jun 2019 10:43:16 +0000
Cc: linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 04/12] dma-buf: add optional
	invalidate_mappings callback v5
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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

Ck9uIFR1ZSwgMTYgQXByIDIwMTkgMjA6Mzg6MzMgKzAyMDAgQ2hyaXN0aWFuIEvDtm5pZyB3cm90
ZToKPiBFYWNoIGltcG9ydGVyIGNhbiBub3cgcHJvdmlkZSBhbiBpbnZhbGlkYXRlX21hcHBpbmdz
IGNhbGxiYWNrLgo+IAo+IFRoaXMgYWxsb3dzIHRoZSBleHBvcnRlciB0byBwcm92aWRlIHRoZSBt
YXBwaW5ncyB3aXRob3V0IHRoZSBuZWVkIHRvIHBpbgo+IHRoZSBiYWNraW5nIHN0b3JlLgo+IAo+
IHYyOiBkb24ndCB0cnkgdG8gaW52YWxpZGF0ZSBtYXBwaW5ncyB3aGVuIHRoZSBjYWxsYmFjayBp
cyBOVUxMLAo+ICAgICBsb2NrIHRoZSByZXNlcnZhdGlvbiBvYmogd2hpbGUgdXNpbmcgdGhlIGF0
dGFjaG1lbnRzLAo+ICAgICBhZGQgaGVscGVyIHRvIHNldCB0aGUgY2FsbGJhY2sKPiB2MzogbW92
ZSBmbGFnIGZvciBpbnZhbGlkYXRpb24gc3VwcG9ydCBpbnRvIHRoZSBETUEtYnVmLAo+ICAgICB1
c2UgbmV3IGF0dGFjaF9pbmZvIHN0cnVjdHVyZSB0byBzZXQgdGhlIGNhbGxiYWNrCj4gdjQ6IHVz
ZSBpbXBvcnRlcl9wcml2IGZpZWxkIGluc3RlYWQgb2YgbWFuZ2xpbmcgZXhwb3J0ZXIgcHJpdi4K
PiB2NTogZHJvcCBpbnZhbGlkYXRpb25fc3VwcG9ydGVkIGZsYWcKPiAKPiBTaWduZWQtb2ZmLWJ5
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gLS0tCj4gIGRy
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCAzNyArKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrCj4gIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5oICAgfCAzMyArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA2OCBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1
Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+IGluZGV4IDgzYzkyYmZkOTY0Yy4uYTM3
MzhmYWIzOTI3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiArKysg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gQEAgLTU2Myw2ICs1NjMsOCBAQCBzdHJ1Y3Qg
ZG1hX2J1Zl9hdHRhY2htZW50ICpkbWFfYnVmX2F0dGFjaChjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9h
dHRhY2hfaW5mbyAqaW5mbwo+ICAKPiAgCWF0dGFjaC0+ZGV2ID0gaW5mby0+ZGV2Owo+ICAJYXR0
YWNoLT5kbWFidWYgPSBkbWFidWY7Cj4gKwlhdHRhY2gtPmltcG9ydGVyX3ByaXYgPSBpbmZvLT5p
bXBvcnRlcl9wcml2Owo+ICsJYXR0YWNoLT5pbnZhbGlkYXRlID0gaW5mby0+aW52YWxpZGF0ZTsK
PiAgCj4gIAltdXRleF9sb2NrKCZkbWFidWYtPmxvY2spOwo+ICAKPiBAQCAtNTcxLDcgKzU3Myw5
IEBAIHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmRtYV9idWZfYXR0YWNoKGNvbnN0IHN0cnVj
dCBkbWFfYnVmX2F0dGFjaF9pbmZvICppbmZvCj4gIAkJaWYgKHJldCkKPiAgCQkJZ290byBlcnJf
YXR0YWNoOwo+ICAJfQo+ICsJcmVzZXJ2YXRpb25fb2JqZWN0X2xvY2soZG1hYnVmLT5yZXN2LCBO
VUxMKTsKPiAgCWxpc3RfYWRkKCZhdHRhY2gtPm5vZGUsICZkbWFidWYtPmF0dGFjaG1lbnRzKTsK
PiArCXJlc2VydmF0aW9uX29iamVjdF91bmxvY2soZG1hYnVmLT5yZXN2KTsKPiAgCk9LLCBwcm90
ZWN0aW9uIGZyb20gcmVzdiBsb2NrIGlzIG5lZWRlZCBmb3IgYXR0YWNoLgoKPiAgCW11dGV4X3Vu
bG9jaygmZG1hYnVmLT5sb2NrKTsKPiAgClRoZSBzbmlwcGV0IGluIFtQQVRDSCAwMS8xMl0gZG1h
LWJ1ZjogYWRkIGR5bmFtaWMgY2FjaGluZyBvZiBzZ190YWJsZQppcyBjb3BpZWQgYW5kIHBhc3Rl
ZCBiZWxvdzoKCkBAIC01NzMsNiArNTczLDIwIEBAIHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQg
KmRtYV9idWZfYXR0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsCiAJbGlzdF9hZGQoJmF0dGFj
aC0+bm9kZSwgJmRtYWJ1Zi0+YXR0YWNobWVudHMpOwoKIAltdXRleF91bmxvY2soJmRtYWJ1Zi0+
bG9jayk7CisKKwlpZiAoIWRtYWJ1Zi0+b3BzLT5keW5hbWljX3NndF9tYXBwaW5nKSB7CisJCXN0
cnVjdCBzZ190YWJsZSAqc2d0OworCisJCXNndCA9IGRtYWJ1Zi0+b3BzLT5tYXBfZG1hX2J1Zihh
dHRhY2gsIERNQV9CSURJUkVDVElPTkFMKTsKKwkJaWYgKCFzZ3QpCisJCQlzZ3QgPSBFUlJfUFRS
KC1FTk9NRU0pOworCQlpZiAoSVNfRVJSKHNndCkpIHsKKwkJCWRtYV9idWZfZGV0YWNoKGRtYWJ1
ZiwgYXR0YWNoKTsKKwkJCXJldHVybiBFUlJfQ0FTVChzZ3QpOworCQl9CisJCWF0dGFjaC0+c2d0
ID0gc2d0OwoKTG9va3MgbGlrZSB0aGUgcHJvdGVjdGlvbiBtZW50aW9uZWQgaXMgYWxzbyBuZWVk
ZWQgaW4gdGhpcyBjYXNlLgorCX0KKwpbLi4uXQo+ICsvKioKPiArICogZG1hX2J1Zl9pbnZhbGlk
YXRlX21hcHBpbmdzIC0gaW52YWxpZGF0ZSBhbGwgbWFwcGluZ3Mgb2YgdGhpcyBkbWFfYnVmCj4g
KyAqCj4gKyAqIEBkbWFidWY6CVtpbl0JYnVmZmVyIHdoaWNoIG1hcHBpbmdzIHNob3VsZCBiZSBp
bnZhbGlkYXRlZAo+ICsgKgo+ICsgKiBJbmZvcm1zIGFsbCBhdHRhY2htZW5zdCB0aGF0IHRoZXkg
bmVlZCB0byBkZXN0cm95IGFuZCByZWNyZWF0ZWQgYWxsIHRoZWlyCgpzL0luZm9ybXMvSW5mb3Jt
LyBzL2F0dGFjaG1lbnN0L2F0dGFjaG1lbnRzLyBzL3JlY3JlYXRlZC9yZWNyZWF0ZS8KCj4gKyAq
IG1hcHBpbmdzLgo+ICsgKi8KPiArdm9pZCBkbWFfYnVmX2ludmFsaWRhdGVfbWFwcGluZ3Moc3Ry
dWN0IGRtYV9idWYgKmRtYWJ1ZikKPiArewo+ICsJc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAq
YXR0YWNoOwo+ICsKPiArCXJlc2VydmF0aW9uX29iamVjdF9hc3NlcnRfaGVsZChkbWFidWYtPnJl
c3YpOwo+ICsKPiArCWxpc3RfZm9yX2VhY2hfZW50cnkoYXR0YWNoLCAmZG1hYnVmLT5hdHRhY2ht
ZW50cywgbm9kZSkKPiArCQlpZiAoYXR0YWNoLT5pbnZhbGlkYXRlKQo+ICsJCQlhdHRhY2gtPmlu
dmFsaWRhdGUoYXR0YWNoKTsKPiArfQo+ICtFWFBPUlRfU1lNQk9MX0dQTChkbWFfYnVmX2ludmFs
aWRhdGVfbWFwcGluZ3MpOwo+ICsKPiAKQlIKSGlsbGYKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
