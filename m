Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VKN4GQhPPmrADAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Jun 2026 12:06:00 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB796CBE97
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Jun 2026 12:05:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=PZs6rUkY;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D3C1D41478
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Jun 2026 10:05:58 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 5787B401CE
	for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Jun 2026 10:05:47 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C34BA60122;
	Fri, 26 Jun 2026 10:05:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B83101F000E9;
	Fri, 26 Jun 2026 10:05:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782468346;
	bh=XPOnL3YaXcY5m5ZE7tv6kcrdVXllWoBe5sPRf2jXnF4=;
	h=From:To:Cc:Subject:Date;
	b=PZs6rUkYf9rAESRZeLEJuYSARXc9W6t080JPfO71cLYWXcyEgTuFTkHXIYKclq6gG
	 euJHYHsWp6jtUC8y3lCHYOjKKbyhia1WduFm6BhN3rQxzTUQIYvkAKMeNnseHV8hl6
	 bsbCOzZzZgga2sfNdrNj21lttW90LocD4TXyKqy5Y+zx1DOxX/5rmUN8YcbZc9pMW9
	 sMtuu+LOqvFonMMC2nK+Jsih17DBX4ORaR4DrbrCSkN0qbULQ6sH5MmidGqOBqadZu
	 p8hOYT6WDeHqrnd3lP3LA4fyeVVf4cfm114K50otfqHf4cGHPOrsNb4iEDgcfutswq
	 26VioYZkSBhCA==
From: Philipp Stanner <phasta@kernel.org>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Danilo Krummrich <dakr@kernel.org>,
	Gary Guo <gary@garyguo.net>,
	"Paul E . McKenney" <paulmck@kernel.org>,
	Boqun Feng <boqun@kernel.org>
Date: Fri, 26 Jun 2026 12:04:42 +0200
Message-ID: <20260626100442.2202221-2-phasta@kernel.org>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-Spamd-Bar: ------
Message-ID-Hash: 4QTZBXVUPZDRZBKSSPODFVUG6FIVYZ53
X-Message-ID-Hash: 4QTZBXVUPZDRZBKSSPODFVUG6FIVYZ53
X-MailFrom: phasta@kernel.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Philipp Stanner <phasta@kernel.org>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: dma-fence: Fix potential NULL pointer dereference
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4QTZBXVUPZDRZBKSSPODFVUG6FIVYZ53/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:boris.brezillon@collabora.com,m:tvrtko.ursulin@igalia.com,m:andre.draszik@linaro.org,m:dakr@kernel.org,m:gary@garyguo.net,m:paulmck@kernel.org,m:boqun@kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:phasta@kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[phasta@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DEB796CBE97

VGhlIGNvbW1pdCBtZW50aW9uZWQgaW4gdGhlIGZpeGVzIHRhZyBiZWxvdyBpbnRyb2R1Y2VkIGEg
bWVjaGFuaXNtDQp0aHJvdWdoIHdoaWNoIGZlbmNlIHByb2R1Y2VycyBjYW4gZnVsbHkgZGVjb3Vw
bGUgZnJvbSBmZW5jZSBjb25zdW1lcnMuDQpUaGlzLCBkZXNpcmFibGUsIG1lY2hhbmlzbSBpcyBi
YXNlZCBvbiB0aGUgZmVuY2UncyBzaWduYWxlZC1iaXQgYXMgdGhlDQoiZGVjb3VwbGluZyBwb2lu
dCIuDQoNCkEgc29waGlzdGljYXRlZCBpbnRlcmFjdGlvbiBiZXR3ZWVuIFJDVSBhbmQgYXRvbWlj
IGluc3RydWN0aW9ucyBhdHRlbXB0cw0KdG8gZW5zdXJlIHRoYXQgZmVuY2UgY29uc3VtZXJzIGNh
biBzdGlsbCBpbnRlcmFjdCB3aXRoIGZlbmNlIHByb2R1Y2Vycw0KdGhyb3VnaCB0aGUgZG1hX2Zl
bmNlX29wcywgY2FsbGJhY2sgcG9pbnRlcnMgaW50byB0aGUgcHJvZHVjZXIuDQoNClRoaXMgaXMg
dGhlIGRlc2lyZWQgYmVoYXZpb3I6IHRvIGNoZWNrIGZvciBkZWNvdXBsaW5nLCB0aGUgc2lnbmFs
ZWQtYml0DQppcyBmaXJzdCBjaGVja2VkLiBJZiBpdCdzIG5vdCB5ZXQgc2lnbmFsZWQsIFJDVSBl
bnN1cmVzIHRoYXQgdGhlIG9wcw0KcG9pbnRlciBjYW5ub3QgeWV0IGJlIE5VTEwuDQoNCkhlcmVi
eSwgZG1hX2ZlbmNlX3NpZ25hbF90aW1lc3RhbXBfbG9ja2VkKCkgZmlyc3Qgc2V0cyB0aGUgc2ln
bmFsZWQtYml0LA0KYW5kIHRoZW4gc2V0cyB0aGUgb3BzIHBvaW50ZXIgdG8gTlVMTC4gUmVhZGVy
cyBmaXJzdCBsb2FkIHRoZSBvcHMNCnBvaW50ZXIsIGFuZCB0aGVuIGNoZWNrIHRocm91Z2ggdGhl
IHNpZ25hbGVkLWJpdCB3aGV0aGVyIHRoZSBwb2ludGVyIGNhbg0KbGVnYWxseSBiZSBhY2Nlc3Nl
ZC4NCg0KVGhlc2Ugc2V0IGFuZCBsb2FkIG9wZXJhdGlvbnMgY291bGQgb2NjdXIgb3V0IG9mIG9y
ZGVyIG9uIHdlYWtseSBvcmRlcmVkDQpwbGF0Zm9ybXMuIEhlbmNlLCB3ZSBuZWVkIHRvIGVuZm9y
Y2Ugc3RyaWN0IG9yZGVyaW5nIGFsbCB0aGUgdGltZS4NCg0KQWRkIHRoZSBhcHByb3ByaWF0ZSBt
ZW1vcnkgYmFycmllcnMuDQoNCkNjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnDQpGaXhlczogZjRj
YzNhYjgyNGQ2ICgiZG1hLWJ1ZjogcHJvdGVjdGVkIGZlbmNlIG9wcyBieSBSQ1UgdjgiKQ0KU2ln
bmVkLW9mZi1ieTogUGhpbGlwcCBTdGFubmVyIDxwaGFzdGFAa2VybmVsLm9yZz4NCi0tLQ0KVGVz
dGVkIHdpdGggZG1hYnVmIGFuZCBkcm1fc2NoZWQgdW5pdCB0ZXN0cy4NCg0KTWVtb3J5IGJhcnJp
ZXJzIGFyZSBub3RvcmlvdXNseSBkaWZmaWN1bHQsIHNvIEkgd291bGQgYXBwcmVjaWF0ZSBpZiBz
b21lDQpvZiB0aGUgbW9yZSBleHBlcmllbmNlZCBmb2xrcyBjYW4gY2hlY2sgdGhpcy4gTm90YWJs
eSwgSSBhbSBub3Qgc3VyZQ0Kd2hldGhlciB0aGUgc21wX3dtYigpIGlzIG5lY2Vzc2FyeS4NCg0K
VGhlIGRvY3VtZW50YXRpb24gZm9yIHRlc3RfYW5kX3NldF9iaXQoKSBtYWtlcyB0aGUgbXlzdGVy
aW91cyBzdGF0ZW1lbnQNCiJUaGlzIGlzIGFuIGF0b21pYyBmdWxseS1vcmRlcmVkIG9wZXJhdGlv
biAoaW1wbGllZCBmdWxsIG1lbW9yeQ0KYmFycmllcikiLCBidXQgdGhlIGtjc2FuX21iKCkgc2Vl
bXMgdG8gYmUgc29tZSBzb3J0IG9mIGRlYnVnZ2luZw0KYmFycmllciwgYW5kIGluIGFueSBjYXNl
IHRoZSBkb2N1IGRvZXNuJ3QgbWFrZSBpdCBvYnZpb3VzIHRvIG1lIHdoZXRoZXINCnRoYXQgImZ1
bGwgYmFycmllciIgY29tZXMgYmVmb3JlIG9yIGFmdGVyIHRoZSBiaXQgc2V0dGluZyB0YWtlcyBw
bGFjZS4NCg0KTW9yZW92ZXIsIGluIG15IG9waW5pb24gd2Ugc2hvdWxkIG9yZGVyIGRtYV9mZW5j
ZV9pc19zaWduYWxlZCgpLCB0b28g4oCTDQpidXQgaWYgd2UgYWdyZWUgdG8gbWVyZ2UgQ2hyaXN0
aWFuJ3MgbmV3IHNlcmllcyBbMV0gdGhhdCBuZWVkIHNob3VsZA0KZGlzYXBwZWFyLg0KDQoNClsx
XSBodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMjAyNjA2MjQxMjI5MTcuMjQ4My0x
LWNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbS8gDQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1hLWZl
bmNlLmMgfCAyNCArKysrKysrKysrKysrKysrKysrKysrKysNCiAxIGZpbGUgY2hhbmdlZCwgMjQg
aW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5j
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQppbmRleCBjN2VhMWU3NWQzOGEuLjJlODBi
MDE0OTlkZSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KKysrIGIv
ZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQpAQCAtMzYzLDYgKzM2MywxOCBAQCB2b2lkIGRt
YV9mZW5jZV9zaWduYWxfdGltZXN0YW1wX2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwN
CiAJCQkJICAgICAgJmZlbmNlLT5mbGFncykpKQ0KIAkJcmV0dXJuOw0KIA0KKwkvKg0KKwkgKiBG
dWxseSBvcmRlciBzZXR0aW5nIG9mIHRoZSBiaXQgYWJvdmUgd2l0aCBzZXR0aW5nIG9mIHRoZSBv
cHMgcG9pbnRlcg0KKwkgKiB0byBOVUxMIGJlbG93LCBzbyB0aGF0IGFsbCBwYXJ0aWVzIGNhbiB1
c2UgdGhlIHNpZ25hbGVkIGZsYWcgdG8NCisJICogZGV0ZWN0IHRoYXQgdGhlIGZlbmNlIGRlY291
cGxlZCBmcm9tIGl0cyBvcHMgaW4gYSBzYWZlIG1hbm5lci4NCisJICoNCisJICogVGhlIGNvdW50
ZXIgcGFydHMgb2YgdGhpcyBiYXJyaWVyIGFyZSBpbiBkbWFfZmVuY2VfdGltZWxpbmVfbmFtZSgp
DQorCSAqIGFuZCBkbWFfZmVuY2VfZHJpdmVyX25hbWUoKS4gQWxsIG90aGVyIGZ1dHVyZSBwYXJ0
aWVzIHRoYXQgcmVseSBvbg0KKwkgKiB0aGUgc2lnbmFsZWQgZmxhZyBmb3IgdmFsaWQgYWNjZXNz
IHRvIHRoZSBvcHMgcG9pbnRlciB3aWxsIG5lZWQgYQ0KKwkgKiBtZW1vcnkgYmFycmllci4NCisJ
ICovDQorCXNtcF93bWIoKTsNCisNCiAJdHJhY2VfZG1hX2ZlbmNlX3NpZ25hbGVkKGZlbmNlKTsN
CiANCiAJLyoNCkBAIC0xMTcwLDYgKzExODIsMTIgQEAgY29uc3QgY2hhciBfX3JjdSAqZG1hX2Zl
bmNlX2RyaXZlcl9uYW1lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KIA0KIAkvKiBSQ1UgcHJv
dGVjdGlvbiBpcyByZXF1aXJlZCBmb3Igc2FmZSBhY2Nlc3MgdG8gcmV0dXJuZWQgc3RyaW5nICov
DQogCW9wcyA9IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCisJLyoNCisJICogRnVsbHkg
b3JkZXIgdGhlIGRlcmVmZXJlbmNlIGFib3ZlIHdpdGggdGhlIGZsYWcgY2hlY2suIE90aGVyd2lz
ZSwNCisJICogb3BzIGNvdWxkIGJlIGRlcmVmZXJlbmNlZCBhcyBhIE5VTEwgcG9pbnRlci4gVGhl
IGJhcnJpZXIncw0KKwkgKiBjb3VudGVycGFydCBpcyBpbiBkbWFfZmVuY2Vfc2lnbmFsX3RpbWVz
dGFtcF9sb2NrZWQoKS4NCisJICovDQorCXNtcF9ybWIoKTsNCiAJaWYgKCFkbWFfZmVuY2VfdGVz
dF9zaWduYWxlZF9mbGFnKGZlbmNlKSkNCiAJCXJldHVybiAoY29uc3QgY2hhciBfX3JjdSAqKW9w
cy0+Z2V0X2RyaXZlcl9uYW1lKGZlbmNlKTsNCiAJZWxzZQ0KQEAgLTEyMDMsNiArMTIyMSwxMiBA
QCBjb25zdCBjaGFyIF9fcmN1ICpkbWFfZmVuY2VfdGltZWxpbmVfbmFtZShzdHJ1Y3QgZG1hX2Zl
bmNlICpmZW5jZSkNCiANCiAJLyogUkNVIHByb3RlY3Rpb24gaXMgcmVxdWlyZWQgZm9yIHNhZmUg
YWNjZXNzIHRvIHJldHVybmVkIHN0cmluZyAqLw0KIAlvcHMgPSByY3VfZGVyZWZlcmVuY2UoZmVu
Y2UtPm9wcyk7DQorCS8qDQorCSAqIEZ1bGx5IG9yZGVyIHRoZSBkZXJlZmVyZW5jZSBhYm92ZSB3
aXRoIHRoZSBmbGFnIGNoZWNrLiBPdGhlcndpc2UsDQorCSAqIG9wcyBjb3VsZCBiZSBkZXJlZmVy
ZW5jZWQgYXMgYSBOVUxMIHBvaW50ZXIuIFRoZSBiYXJyaWVyJ3MNCisJICogY291bnRlcnBhcnQg
aXMgaW4gZG1hX2ZlbmNlX3NpZ25hbF90aW1lc3RhbXBfbG9ja2VkKCkuDQorCSAqLw0KKwlzbXBf
cm1iKCk7DQogCWlmICghZG1hX2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxhZyhmZW5jZSkpDQogCQly
ZXR1cm4gKGNvbnN0IGNoYXIgX19yY3UgKilvcHMtPmdldF9kcml2ZXJfbmFtZShmZW5jZSk7DQog
CWVsc2UNCg0KYmFzZS1jb21taXQ6IGNkZWIyY2NkOTkzZWQ4NjQ3YWRiYmRhMmMzYjEwM2FhNzE3
ZmQ2ZjcNCi0tIA0KMi41NC4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
