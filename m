Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 565E4B02B81
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 12 Jul 2025 16:47:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 695C943C07
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 12 Jul 2025 14:47:04 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 73E8E454CD
	for <linaro-mm-sig@lists.linaro.org>; Sat, 12 Jul 2025 14:45:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=r86Yv0rT;
	spf=pass (lists.linaro.org: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E9A0A4534D;
	Sat, 12 Jul 2025 14:45:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7429DC4CEEF;
	Sat, 12 Jul 2025 14:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1752331558;
	bh=Z6nJtXxCafl9NifqOX9nM3hQiC/MyZhQS5d0tSYhyF4=;
	h=Subject:To:Cc:From:Date:From;
	b=r86Yv0rTNTy+4trJWEHR4hNGihv106zBku7dgI+72U3NQhayIS/l+cjSoxFWROVtH
	 JPouYVErHWbRVGHORwiedfD7orriLSt7SqkaQ3qqOd18lkygOipXsoFYM5tyi+PSMY
	 /JBkhAwqyEXnFelPBVkTOBA9UtrEHEDX1CXk08eQ=
To: asrivats@redhat.com,bp@alien8.de,christian.koenig@amd.com,dri-devel@lists.freedesktop.org,gregkh@linuxfoundation.org,linaro-mm-sig@lists.linaro.org,maarten.lankhorst@linux.intel.com,mripard@kernel.org,spasswolf@web.de,sumit.semwal@linaro.org,superm1@kernel.org,tzimmermann@suse.de
From: <gregkh@linuxfoundation.org>
Date: Sat, 12 Jul 2025 16:45:33 +0200
Message-ID: <2025071233-hydrated-transpire-04b5@gregkh>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 73E8E454CD
X-Spamd-Bar: /
X-Spamd-Result: default: False [0.50 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_NO_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[redhat.com,alien8.de,amd.com,lists.freedesktop.org,linuxfoundation.org,lists.linaro.org,linux.intel.com,kernel.org,web.de,linaro.org,suse.de];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[linuxfoundation.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: JCR2IJHJ3BF4LALJGAVLDFVHNWW2I2QI
X-Message-ID-Hash: JCR2IJHJ3BF4LALJGAVLDFVHNWW2I2QI
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: stable-commits@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Patch "drm/framebuffer: Acquire internal references on GEM handles" has been added to the 6.15-stable tree
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JCR2IJHJ3BF4LALJGAVLDFVHNWW2I2QI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpUaGlzIGlzIGEgbm90ZSB0byBsZXQgeW91IGtub3cgdGhhdCBJJ3ZlIGp1c3QgYWRkZWQgdGhl
IHBhdGNoIHRpdGxlZA0KDQogICAgZHJtL2ZyYW1lYnVmZmVyOiBBY3F1aXJlIGludGVybmFsIHJl
ZmVyZW5jZXMgb24gR0VNIGhhbmRsZXMNCg0KdG8gdGhlIDYuMTUtc3RhYmxlIHRyZWUgd2hpY2gg
Y2FuIGJlIGZvdW5kIGF0Og0KICAgIGh0dHA6Ly93d3cua2VybmVsLm9yZy9naXQvP3A9bGludXgv
a2VybmVsL2dpdC9zdGFibGUvc3RhYmxlLXF1ZXVlLmdpdDthPXN1bW1hcnkNCg0KVGhlIGZpbGVu
YW1lIG9mIHRoZSBwYXRjaCBpczoNCiAgICAgZHJtLWZyYW1lYnVmZmVyLWFjcXVpcmUtaW50ZXJu
YWwtcmVmZXJlbmNlcy1vbi1nZW0taGFuZGxlcy5wYXRjaA0KYW5kIGl0IGNhbiBiZSBmb3VuZCBp
biB0aGUgcXVldWUtNi4xNSBzdWJkaXJlY3RvcnkuDQoNCklmIHlvdSwgb3IgYW55b25lIGVsc2Us
IGZlZWxzIGl0IHNob3VsZCBub3QgYmUgYWRkZWQgdG8gdGhlIHN0YWJsZSB0cmVlLA0KcGxlYXNl
IGxldCA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4ga25vdyBhYm91dCBpdC4NCg0KDQo+RnJvbSBm
NmJmYzlhZmM3NTEwY2I1ZTZmYmUwYTE3YzUwNzkxN2IwMTIwMjgwIE1vbiBTZXAgMTcgMDA6MDA6
MDAgMjAwMQ0KRnJvbTogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQpE
YXRlOiBNb24sIDcgSnVsIDIwMjUgMTU6MTE6NTUgKzAyMDANClN1YmplY3Q6IGRybS9mcmFtZWJ1
ZmZlcjogQWNxdWlyZSBpbnRlcm5hbCByZWZlcmVuY2VzIG9uIEdFTSBoYW5kbGVzDQpNSU1FLVZl
cnNpb246IDEuMA0KQ29udGVudC1UeXBlOiB0ZXh0L3BsYWluOyBjaGFyc2V0PVVURi04DQpDb250
ZW50LVRyYW5zZmVyLUVuY29kaW5nOiA4Yml0DQoNCkZyb206IFRob21hcyBaaW1tZXJtYW5uIDx0
emltbWVybWFubkBzdXNlLmRlPg0KDQpjb21taXQgZjZiZmM5YWZjNzUxMGNiNWU2ZmJlMGExN2M1
MDc5MTdiMDEyMDI4MCB1cHN0cmVhbS4NCg0KQWNxdWlyZSBHRU0gaGFuZGxlcyBpbiBkcm1fZnJh
bWVidWZmZXJfaW5pdCgpIGFuZCByZWxlYXNlIHRoZW0gaW4NCnRoZSBjb3JyZXNwb25kaW5nIGRy
bV9mcmFtZWJ1ZmZlcl9jbGVhbnVwKCkuIFRpZXMgdGhlIGhhbmRsZSdzDQpsaWZldGltZSB0byB0
aGUgZnJhbWVidWZmZXIuIE5vdCBhbGwgR0VNIGJ1ZmZlciBvYmplY3RzIGhhdmUgR0VNDQpoYW5k
bGVzLiBJZiBub3Qgc2V0LCBubyByZWZjb3VudGluZyB0YWtlcyBwbGFjZS4gVGhpcyBpcyB0aGUg
Y2FzZQ0KZm9yIHNvbWUgZmJkZXYgZW11bGF0aW9uLiBUaGlzIGlzIG5vdCBhIHByb2JsZW0gYXMg
dGhlc2UgR0VNIG9iamVjdHMNCmRvIG5vdCB1c2UgZG1hLWJ1ZnMgYW5kIGRyaXZlcnMgd2lsbCBu
b3QgcmVsZWFzZSB0aGVtIHdoaWxlIGZiZGV2DQplbXVsYXRpb24gaXMgcnVubmluZy4gRnJhbWVi
dWZmZXIgZmxhZ3Mga2VlcCBhIGJpdCBwZXIgY29sb3IgcGxhbmUNCm9mIHdoaWNoIHRoZSBmcmFt
ZWJ1ZmZlciBob2xkcyBhIEdFTSBoYW5kbGUgcmVmZXJlbmNlLg0KDQpBcyBhbGwgZHJpdmVycyB1
c2UgZHJtX2ZyYW1lYnVmZmVyX2luaXQoKSwgdGhleSB3aWxsIG5vdyBhbGwgaG9sZA0KZG1hLWJ1
ZiByZWZlcmVuY2VzIGFzIGZpeGVkIGluIGNvbW1pdCA1MzA3ZGNlODc4ZDQgKCJkcm0vZ2VtOiBB
Y3F1aXJlDQpyZWZlcmVuY2VzIG9uIEdFTSBoYW5kbGVzIGZvciBmcmFtZWJ1ZmZlcnMiKS4NCg0K
SW4gdGhlIEdFTSBmcmFtZWJ1ZmZlciBoZWxwZXJzLCByZXN0b3JlIHRoZSBvcmlnaW5hbCByZWYg
Y291bnRpbmcNCm9uIGJ1ZmZlciBvYmplY3RzLiBBcyB0aGUgaGVscGVycyBmb3IgaGFuZGxlIHJl
ZmNvdW50aW5nIGFyZSBub3cNCm5vIGxvbmdlciBjYWxsZWQgZnJvbSBvdXRzaWRlIHRoZSBEUk0g
Y29yZSwgdW5leHBvcnQgdGhlIHN5bWJvbHMuDQoNCnYzOg0KLSBkb24ndCBtaXggaW50ZXJuYWwg
ZmxhZ3Mgd2l0aCBtb2RlIGZsYWdzIChDaHJpc3RpYW4pDQp2MjoNCi0gdHJhY2sgZnJhbWVidWZm
ZXIgaGFuZGxlIHJlZnMgYnkgZmxhZw0KLSBkcm9wIGdtYTUwMCBjbGVhbnVwIChDaHJpc3RpYW4p
DQoNClNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRl
Pg0KRml4ZXM6IDUzMDdkY2U4NzhkNCAoImRybS9nZW06IEFjcXVpcmUgcmVmZXJlbmNlcyBvbiBH
RU0gaGFuZGxlcyBmb3IgZnJhbWVidWZmZXJzIikNClJlcG9ydGVkLWJ5OiBCZXJ0IEthcndhdHpr
aSA8c3Bhc3N3b2xmQHdlYi5kZT4NCkNsb3NlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJp
LWRldmVsLzIwMjUwNzAzMTE1OTE1LjMwOTYtMS1zcGFzc3dvbGZAd2ViLmRlLw0KVGVzdGVkLWJ5
OiBCZXJ0IEthcndhdHpraSA8c3Bhc3N3b2xmQHdlYi5kZT4NClRlc3RlZC1ieTogTWFyaW8gTGlt
b25jaWVsbG8gPHN1cGVybTFAa2VybmVsLm9yZz4NClRlc3RlZC1ieTogQm9yaXNsYXYgUGV0a292
IChBTUQpIDxicEBhbGllbjguZGU+DQpDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5u
QHN1c2UuZGU+DQpDYzogQW51c2hhIFNyaXZhdHNhIDxhc3JpdmF0c0ByZWRoYXQuY29tPg0KQ2M6
IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkNjOiBNYWFydGVu
IExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPg0KQ2M6IE1heGlt
ZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4NCkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNl
bXdhbEBsaW5hcm8ub3JnPg0KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPg0KQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KQ2M6IGRyaS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcNCkNjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4NClJldmlld2VkLWJ5OiBDaHJpc3RpYW4g
S8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpMaW5rOiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9yLzIwMjUwNzA3MTMxMjI0LjI0OTQ5Ni0xLXR6aW1tZXJtYW5uQHN1c2UuZGUNClNp
Z25lZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5v
cmc+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2ZyYW1lYnVmZmVyLmMgICAgICAgICAgICB8
ICAgMzEgKysrKysrKysrKysrKysrKysrKystLQ0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMg
ICAgICAgICAgICAgICAgICAgIHwgICAzOCArKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0NCiBk
cml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9mcmFtZWJ1ZmZlcl9oZWxwZXIuYyB8ICAgMTYgKysrKy0t
LS0tLS0NCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2ludGVybmFsLmggICAgICAgICAgICAgICB8ICAg
IDIgLQ0KIGluY2x1ZGUvZHJtL2RybV9mcmFtZWJ1ZmZlci5oICAgICAgICAgICAgICAgIHwgICAg
NyArKysrDQogNSBmaWxlcyBjaGFuZ2VkLCA2OCBpbnNlcnRpb25zKCspLCAyNiBkZWxldGlvbnMo
LSkNCg0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9mcmFtZWJ1ZmZlci5jDQorKysgYi9kcml2
ZXJzL2dwdS9kcm0vZHJtX2ZyYW1lYnVmZmVyLmMNCkBAIC04NjIsMTEgKzg2MiwyMyBAQCBFWFBP
UlRfU1lNQk9MX0ZPUl9URVNUU19PTkxZKGRybV9mcmFtZWJ1DQogaW50IGRybV9mcmFtZWJ1ZmZl
cl9pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZi
LA0KIAkJCSBjb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyX2Z1bmNzICpmdW5jcykNCiB7DQor
CXVuc2lnbmVkIGludCBpOw0KIAlpbnQgcmV0Ow0KKwlib29sIGV4aXN0czsNCiANCiAJaWYgKFdB
Uk5fT05fT05DRShmYi0+ZGV2ICE9IGRldiB8fCAhZmItPmZvcm1hdCkpDQogCQlyZXR1cm4gLUVJ
TlZBTDsNCiANCisJZm9yIChpID0gMDsgaSA8IGZiLT5mb3JtYXQtPm51bV9wbGFuZXM7IGkrKykg
ew0KKwkJaWYgKGRybV9XQVJOX09OX09OQ0UoZGV2LCBmYi0+aW50ZXJuYWxfZmxhZ3MgJiBEUk1f
RlJBTUVCVUZGRVJfSEFTX0hBTkRMRV9SRUYoaSkpKQ0KKwkJCWZiLT5pbnRlcm5hbF9mbGFncyAm
PSB+RFJNX0ZSQU1FQlVGRkVSX0hBU19IQU5ETEVfUkVGKGkpOw0KKwkJaWYgKGZiLT5vYmpbaV0p
IHsNCisJCQlleGlzdHMgPSBkcm1fZ2VtX29iamVjdF9oYW5kbGVfZ2V0X2lmX2V4aXN0c191bmxv
Y2tlZChmYi0+b2JqW2ldKTsNCisJCQlpZiAoZXhpc3RzKQ0KKwkJCQlmYi0+aW50ZXJuYWxfZmxh
Z3MgfD0gRFJNX0ZSQU1FQlVGRkVSX0hBU19IQU5ETEVfUkVGKGkpOw0KKwkJfQ0KKwl9DQorDQog
CUlOSVRfTElTVF9IRUFEKCZmYi0+ZmlscF9oZWFkKTsNCiANCiAJZmItPmZ1bmNzID0gZnVuY3M7
DQpAQCAtODc1LDcgKzg4Nyw3IEBAIGludCBkcm1fZnJhbWVidWZmZXJfaW5pdChzdHJ1Y3QgZHJt
X2RldmkNCiAJcmV0ID0gX19kcm1fbW9kZV9vYmplY3RfYWRkKGRldiwgJmZiLT5iYXNlLCBEUk1f
TU9ERV9PQkpFQ1RfRkIsDQogCQkJCSAgICBmYWxzZSwgZHJtX2ZyYW1lYnVmZmVyX2ZyZWUpOw0K
IAlpZiAocmV0KQ0KLQkJZ290byBvdXQ7DQorCQlnb3RvIGVycjsNCiANCiAJbXV0ZXhfbG9jaygm
ZGV2LT5tb2RlX2NvbmZpZy5mYl9sb2NrKTsNCiAJZGV2LT5tb2RlX2NvbmZpZy5udW1fZmIrKzsN
CkBAIC04ODMsNyArODk1LDE2IEBAIGludCBkcm1fZnJhbWVidWZmZXJfaW5pdChzdHJ1Y3QgZHJt
X2RldmkNCiAJbXV0ZXhfdW5sb2NrKCZkZXYtPm1vZGVfY29uZmlnLmZiX2xvY2spOw0KIA0KIAlk
cm1fbW9kZV9vYmplY3RfcmVnaXN0ZXIoZGV2LCAmZmItPmJhc2UpOw0KLW91dDoNCisNCisJcmV0
dXJuIDA7DQorDQorZXJyOg0KKwlmb3IgKGkgPSAwOyBpIDwgZmItPmZvcm1hdC0+bnVtX3BsYW5l
czsgaSsrKSB7DQorCQlpZiAoZmItPmludGVybmFsX2ZsYWdzICYgRFJNX0ZSQU1FQlVGRkVSX0hB
U19IQU5ETEVfUkVGKGkpKSB7DQorCQkJZHJtX2dlbV9vYmplY3RfaGFuZGxlX3B1dF91bmxvY2tl
ZChmYi0+b2JqW2ldKTsNCisJCQlmYi0+aW50ZXJuYWxfZmxhZ3MgJj0gfkRSTV9GUkFNRUJVRkZF
Ul9IQVNfSEFORExFX1JFRihpKTsNCisJCX0NCisJfQ0KIAlyZXR1cm4gcmV0Ow0KIH0NCiBFWFBP
UlRfU1lNQk9MKGRybV9mcmFtZWJ1ZmZlcl9pbml0KTsNCkBAIC05NjAsNiArOTgxLDEyIEBAIEVY
UE9SVF9TWU1CT0woZHJtX2ZyYW1lYnVmZmVyX3VucmVnaXN0ZXINCiB2b2lkIGRybV9mcmFtZWJ1
ZmZlcl9jbGVhbnVwKHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiKQ0KIHsNCiAJc3RydWN0IGRy
bV9kZXZpY2UgKmRldiA9IGZiLT5kZXY7DQorCXVuc2lnbmVkIGludCBpOw0KKw0KKwlmb3IgKGkg
PSAwOyBpIDwgZmItPmZvcm1hdC0+bnVtX3BsYW5lczsgaSsrKSB7DQorCQlpZiAoZmItPmludGVy
bmFsX2ZsYWdzICYgRFJNX0ZSQU1FQlVGRkVSX0hBU19IQU5ETEVfUkVGKGkpKQ0KKwkJCWRybV9n
ZW1fb2JqZWN0X2hhbmRsZV9wdXRfdW5sb2NrZWQoZmItPm9ialtpXSk7DQorCX0NCiANCiAJbXV0
ZXhfbG9jaygmZGV2LT5tb2RlX2NvbmZpZy5mYl9sb2NrKTsNCiAJbGlzdF9kZWwoJmZiLT5oZWFk
KTsNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9kcm1fZ2VtLmMNCkBAIC0yMjMsMjMgKzIyMywzNCBAQCBzdGF0aWMgdm9pZCBkcm1fZ2VtX29i
amVjdF9oYW5kbGVfZ2V0KHN0DQogfQ0KIA0KIC8qKg0KLSAqIGRybV9nZW1fb2JqZWN0X2hhbmRs
ZV9nZXRfdW5sb2NrZWQgLSBhY3F1aXJlIHJlZmVyZW5jZSBvbiB1c2VyLXNwYWNlIGhhbmRsZXMN
CisgKiBkcm1fZ2VtX29iamVjdF9oYW5kbGVfZ2V0X2lmX2V4aXN0c191bmxvY2tlZCAtIGFjcXVp
cmUgcmVmZXJlbmNlIG9uIHVzZXItc3BhY2UgaGFuZGxlLCBpZiBhbnkNCiAgKiBAb2JqOiBHRU0g
b2JqZWN0DQogICoNCi0gKiBBY3F1aXJlcyBhIHJlZmVyZW5jZSBvbiB0aGUgR0VNIGJ1ZmZlciBv
YmplY3QncyBoYW5kbGUuIFJlcXVpcmVkDQotICogdG8ga2VlcCB0aGUgR0VNIG9iamVjdCBhbGl2
ZS4gQ2FsbCBkcm1fZ2VtX29iamVjdF9oYW5kbGVfcHV0X3VubG9ja2VkKCkNCi0gKiB0byByZWxl
YXNlIHRoZSByZWZlcmVuY2UuDQorICogQWNxdWlyZXMgYSByZWZlcmVuY2Ugb24gdGhlIEdFTSBi
dWZmZXIgb2JqZWN0J3MgaGFuZGxlLiBSZXF1aXJlZCB0byBrZWVwDQorICogdGhlIEdFTSBvYmpl
Y3QgYWxpdmUuIENhbGwgZHJtX2dlbV9vYmplY3RfaGFuZGxlX3B1dF9pZl9leGlzdHNfdW5sb2Nr
ZWQoKQ0KKyAqIHRvIHJlbGVhc2UgdGhlIHJlZmVyZW5jZS4gRG9lcyBub3RoaW5nIGlmIHRoZSBi
dWZmZXIgb2JqZWN0IGhhcyBubyBoYW5kbGUuDQorICoNCisgKiBSZXR1cm5zOg0KKyAqIFRydWUg
aWYgYSBoYW5kbGUgZXhpc3RzLCBvciBmYWxzZSBvdGhlcndpc2UNCiAgKi8NCi12b2lkIGRybV9n
ZW1fb2JqZWN0X2hhbmRsZV9nZXRfdW5sb2NrZWQoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmop
DQorYm9vbCBkcm1fZ2VtX29iamVjdF9oYW5kbGVfZ2V0X2lmX2V4aXN0c191bmxvY2tlZChzdHJ1
Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikNCiB7DQogCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBv
YmotPmRldjsNCiANCiAJZ3VhcmQobXV0ZXgpKCZkZXYtPm9iamVjdF9uYW1lX2xvY2spOw0KIA0K
LQlkcm1fV0FSTl9PTihkZXYsICFvYmotPmhhbmRsZV9jb3VudCk7IC8qIGZpcnN0IHJlZiB0YWtl
biBpbiBjcmVhdGUtdGFpbCBoZWxwZXIgKi8NCisJLyoNCisJICogRmlyc3QgcmVmIHRha2VuIGR1
cmluZyBHRU0gb2JqZWN0IGNyZWF0aW9uLCBpZiBhbnkuIFNvbWUNCisJICogZHJpdmVycyBzZXQg
dXAgaW50ZXJuYWwgZnJhbWVidWZmZXJzIHdpdGggR0VNIG9iamVjdHMgdGhhdA0KKwkgKiBkbyBu
b3QgaGF2ZSBhIEdFTSBoYW5kbGUuIEhlbmNlLCB0aGlzIGNvdW50ZXIgY2FuIGJlIHplcm8uDQor
CSAqLw0KKwlpZiAoIW9iai0+aGFuZGxlX2NvdW50KQ0KKwkJcmV0dXJuIGZhbHNlOw0KKw0KIAlk
cm1fZ2VtX29iamVjdF9oYW5kbGVfZ2V0KG9iaik7DQorDQorCXJldHVybiB0cnVlOw0KIH0NCi1F
WFBPUlRfU1lNQk9MKGRybV9nZW1fb2JqZWN0X2hhbmRsZV9nZXRfdW5sb2NrZWQpOw0KIA0KIC8q
Kg0KICAqIGRybV9nZW1fb2JqZWN0X2hhbmRsZV9mcmVlIC0gcmVsZWFzZSByZXNvdXJjZXMgYm91
bmQgdG8gdXNlcnNwYWNlIGhhbmRsZXMNCkBAIC0yNzIsNyArMjgzLDcgQEAgc3RhdGljIHZvaWQg
ZHJtX2dlbV9vYmplY3RfZXhwb3J0ZWRfZG1hXw0KIH0NCiANCiAvKioNCi0gKiBkcm1fZ2VtX29i
amVjdF9oYW5kbGVfcHV0X3VubG9ja2VkIC0gcmVsZWFzZXMgcmVmZXJlbmNlIG9uIHVzZXItc3Bh
Y2UgaGFuZGxlcw0KKyAqIGRybV9nZW1fb2JqZWN0X2hhbmRsZV9wdXRfdW5sb2NrZWQgLSByZWxl
YXNlcyByZWZlcmVuY2Ugb24gdXNlci1zcGFjZSBoYW5kbGUNCiAgKiBAb2JqOiBHRU0gb2JqZWN0
DQogICoNCiAgKiBSZWxlYXNlcyBhIHJlZmVyZW5jZSBvbiB0aGUgR0VNIGJ1ZmZlciBvYmplY3Qn
cyBoYW5kbGUuIFBvc3NpYmx5IHJlbGVhc2VzDQpAQCAtMjgzLDE0ICsyOTQsMTQgQEAgdm9pZCBk
cm1fZ2VtX29iamVjdF9oYW5kbGVfcHV0X3VubG9ja2VkKA0KIAlzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2ID0gb2JqLT5kZXY7DQogCWJvb2wgZmluYWwgPSBmYWxzZTsNCiANCi0JaWYgKFdBUk5fT04o
UkVBRF9PTkNFKG9iai0+aGFuZGxlX2NvdW50KSA9PSAwKSkNCisJaWYgKGRybV9XQVJOX09OKGRl
diwgUkVBRF9PTkNFKG9iai0+aGFuZGxlX2NvdW50KSA9PSAwKSkNCiAJCXJldHVybjsNCiANCiAJ
LyoNCi0JKiBNdXN0IGJ1bXAgaGFuZGxlIGNvdW50IGZpcnN0IGFzIHRoaXMgbWF5IGJlIHRoZSBs
YXN0DQotCSogcmVmLCBpbiB3aGljaCBjYXNlIHRoZSBvYmplY3Qgd291bGQgZGlzYXBwZWFyIGJl
Zm9yZSB3ZQ0KLQkqIGNoZWNrZWQgZm9yIGEgbmFtZQ0KLQkqLw0KKwkgKiBNdXN0IGJ1bXAgaGFu
ZGxlIGNvdW50IGZpcnN0IGFzIHRoaXMgbWF5IGJlIHRoZSBsYXN0DQorCSAqIHJlZiwgaW4gd2hp
Y2ggY2FzZSB0aGUgb2JqZWN0IHdvdWxkIGRpc2FwcGVhciBiZWZvcmUNCisJICogd2UgY2hlY2tl
ZCBmb3IgYSBuYW1lLg0KKwkgKi8NCiANCiAJbXV0ZXhfbG9jaygmZGV2LT5vYmplY3RfbmFtZV9s
b2NrKTsNCiAJaWYgKC0tb2JqLT5oYW5kbGVfY291bnQgPT0gMCkgew0KQEAgLTMwMyw3ICszMTQs
NiBAQCB2b2lkIGRybV9nZW1fb2JqZWN0X2hhbmRsZV9wdXRfdW5sb2NrZWQoDQogCWlmIChmaW5h
bCkNCiAJCWRybV9nZW1fb2JqZWN0X3B1dChvYmopOw0KIH0NCi1FWFBPUlRfU1lNQk9MKGRybV9n
ZW1fb2JqZWN0X2hhbmRsZV9wdXRfdW5sb2NrZWQpOw0KIA0KIC8qDQogICogQ2FsbGVkIGF0IGRl
dmljZSBvciBvYmplY3QgY2xvc2UgdG8gcmVsZWFzZSB0aGUgZmlsZSdzDQotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vZHJtX2dlbV9mcmFtZWJ1ZmZlcl9oZWxwZXIuYw0KKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2RybV9nZW1fZnJhbWVidWZmZXJfaGVscGVyLmMNCkBAIC05OSw3ICs5OSw3IEBAIHZvaWQg
ZHJtX2dlbV9mYl9kZXN0cm95KHN0cnVjdCBkcm1fZnJhbWUNCiAJdW5zaWduZWQgaW50IGk7DQog
DQogCWZvciAoaSA9IDA7IGkgPCBmYi0+Zm9ybWF0LT5udW1fcGxhbmVzOyBpKyspDQotCQlkcm1f
Z2VtX29iamVjdF9oYW5kbGVfcHV0X3VubG9ja2VkKGZiLT5vYmpbaV0pOw0KKwkJZHJtX2dlbV9v
YmplY3RfcHV0KGZiLT5vYmpbaV0pOw0KIA0KIAlkcm1fZnJhbWVidWZmZXJfY2xlYW51cChmYik7
DQogCWtmcmVlKGZiKTsNCkBAIC0xODIsMTAgKzE4Miw4IEBAIGludCBkcm1fZ2VtX2ZiX2luaXRf
d2l0aF9mdW5jcyhzdHJ1Y3QgZHINCiAJCWlmICghb2Jqc1tpXSkgew0KIAkJCWRybV9kYmdfa21z
KGRldiwgIkZhaWxlZCB0byBsb29rdXAgR0VNIG9iamVjdFxuIik7DQogCQkJcmV0ID0gLUVOT0VO
VDsNCi0JCQlnb3RvIGVycl9nZW1fb2JqZWN0X2hhbmRsZV9wdXRfdW5sb2NrZWQ7DQorCQkJZ290
byBlcnJfZ2VtX29iamVjdF9wdXQ7DQogCQl9DQotCQlkcm1fZ2VtX29iamVjdF9oYW5kbGVfZ2V0
X3VubG9ja2VkKG9ianNbaV0pOw0KLQkJZHJtX2dlbV9vYmplY3RfcHV0KG9ianNbaV0pOw0KIA0K
IAkJbWluX3NpemUgPSAoaGVpZ2h0IC0gMSkgKiBtb2RlX2NtZC0+cGl0Y2hlc1tpXQ0KIAkJCSAr
IGRybV9mb3JtYXRfaW5mb19taW5fcGl0Y2goaW5mbywgaSwgd2lkdGgpDQpAQCAtMTk1LDIyICsx
OTMsMjIgQEAgaW50IGRybV9nZW1fZmJfaW5pdF93aXRoX2Z1bmNzKHN0cnVjdCBkcg0KIAkJCWRy
bV9kYmdfa21zKGRldiwNCiAJCQkJICAgICJHRU0gb2JqZWN0IHNpemUgKCV6dSkgc21hbGxlciB0
aGFuIG1pbmltdW0gc2l6ZSAoJXUpIGZvciBwbGFuZSAlZFxuIiwNCiAJCQkJICAgIG9ianNbaV0t
PnNpemUsIG1pbl9zaXplLCBpKTsNCi0JCQlkcm1fZ2VtX29iamVjdF9oYW5kbGVfcHV0X3VubG9j
a2VkKG9ianNbaV0pOw0KKwkJCWRybV9nZW1fb2JqZWN0X3B1dChvYmpzW2ldKTsNCiAJCQlyZXQg
PSAtRUlOVkFMOw0KLQkJCWdvdG8gZXJyX2dlbV9vYmplY3RfaGFuZGxlX3B1dF91bmxvY2tlZDsN
CisJCQlnb3RvIGVycl9nZW1fb2JqZWN0X3B1dDsNCiAJCX0NCiAJfQ0KIA0KIAlyZXQgPSBkcm1f
Z2VtX2ZiX2luaXQoZGV2LCBmYiwgbW9kZV9jbWQsIG9ianMsIGksIGZ1bmNzKTsNCiAJaWYgKHJl
dCkNCi0JCWdvdG8gZXJyX2dlbV9vYmplY3RfaGFuZGxlX3B1dF91bmxvY2tlZDsNCisJCWdvdG8g
ZXJyX2dlbV9vYmplY3RfcHV0Ow0KIA0KIAlyZXR1cm4gMDsNCiANCi1lcnJfZ2VtX29iamVjdF9o
YW5kbGVfcHV0X3VubG9ja2VkOg0KK2Vycl9nZW1fb2JqZWN0X3B1dDoNCiAJd2hpbGUgKGkgPiAw
KSB7DQogCQktLWk7DQotCQlkcm1fZ2VtX29iamVjdF9oYW5kbGVfcHV0X3VubG9ja2VkKG9ianNb
aV0pOw0KKwkJZHJtX2dlbV9vYmplY3RfcHV0KG9ianNbaV0pOw0KIAl9DQogCXJldHVybiByZXQ7
DQogfQ0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9pbnRlcm5hbC5oDQorKysgYi9kcml2ZXJz
L2dwdS9kcm0vZHJtX2ludGVybmFsLmgNCkBAIC0xNjEsNyArMTYxLDcgQEAgdm9pZCBkcm1fc3lz
ZnNfbGVhc2VfZXZlbnQoc3RydWN0IGRybV9kZQ0KIA0KIC8qIGRybV9nZW0uYyAqLw0KIGludCBk
cm1fZ2VtX2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldik7DQotdm9pZCBkcm1fZ2VtX29iamVj
dF9oYW5kbGVfZ2V0X3VubG9ja2VkKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKTsNCitib29s
IGRybV9nZW1fb2JqZWN0X2hhbmRsZV9nZXRfaWZfZXhpc3RzX3VubG9ja2VkKHN0cnVjdCBkcm1f
Z2VtX29iamVjdCAqb2JqKTsNCiB2b2lkIGRybV9nZW1fb2JqZWN0X2hhbmRsZV9wdXRfdW5sb2Nr
ZWQoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopOw0KIGludCBkcm1fZ2VtX2hhbmRsZV9jcmVh
dGVfdGFpbChzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdiwNCiAJCQkgICAgICAgc3RydWN0IGRy
bV9nZW1fb2JqZWN0ICpvYmosDQotLS0gYS9pbmNsdWRlL2RybS9kcm1fZnJhbWVidWZmZXIuaA0K
KysrIGIvaW5jbHVkZS9kcm0vZHJtX2ZyYW1lYnVmZmVyLmgNCkBAIC0yMyw2ICsyMyw3IEBADQog
I2lmbmRlZiBfX0RSTV9GUkFNRUJVRkZFUl9IX18NCiAjZGVmaW5lIF9fRFJNX0ZSQU1FQlVGRkVS
X0hfXw0KIA0KKyNpbmNsdWRlIDxsaW51eC9iaXRzLmg+DQogI2luY2x1ZGUgPGxpbnV4L2N0eXBl
Lmg+DQogI2luY2x1ZGUgPGxpbnV4L2xpc3QuaD4NCiAjaW5jbHVkZSA8bGludXgvc2NoZWQuaD4N
CkBAIC0xMDAsNiArMTAxLDggQEAgc3RydWN0IGRybV9mcmFtZWJ1ZmZlcl9mdW5jcyB7DQogCQkg
ICAgIHVuc2lnbmVkIG51bV9jbGlwcyk7DQogfTsNCiANCisjZGVmaW5lIERSTV9GUkFNRUJVRkZF
Ul9IQVNfSEFORExFX1JFRihfaSkJQklUKDB1ICsgKF9pKSkNCisNCiAvKioNCiAgKiBzdHJ1Y3Qg
ZHJtX2ZyYW1lYnVmZmVyIC0gZnJhbWUgYnVmZmVyIG9iamVjdA0KICAqDQpAQCAtMTg5LDYgKzE5
MiwxMCBAQCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyIHsNCiAJICovDQogCWludCBmbGFnczsNCiAJ
LyoqDQorCSAqIEBpbnRlcm5hbF9mbGFnczogRnJhbWVidWZmZXIgZmxhZ3MgbGlrZSBEUk1fRlJB
TUVCVUZGRVJfSEFTX0hBTkRMRV9SRUYuDQorCSAqLw0KKwl1bnNpZ25lZCBpbnQgaW50ZXJuYWxf
ZmxhZ3M7DQorCS8qKg0KIAkgKiBAZmlscF9oZWFkOiBQbGFjZWQgb24gJmRybV9maWxlLmZicywg
cHJvdGVjdGVkIGJ5ICZkcm1fZmlsZS5mYnNfbG9jay4NCiAJICovDQogCXN0cnVjdCBsaXN0X2hl
YWQgZmlscF9oZWFkOw0KDQoNClBhdGNoZXMgY3VycmVudGx5IGluIHN0YWJsZS1xdWV1ZSB3aGlj
aCBtaWdodCBiZSBmcm9tIHR6aW1tZXJtYW5uQHN1c2UuZGUgYXJlDQoNCnF1ZXVlLTYuMTUvZHJt
LWdlbS1maXgtcmFjZS1pbi1kcm1fZ2VtX2hhbmRsZV9jcmVhdGVfdGFpbC5wYXRjaA0KcXVldWUt
Ni4xNS9kcm0tZ2VtLWFjcXVpcmUtcmVmZXJlbmNlcy1vbi1nZW0taGFuZGxlcy1mb3ItZnJhbWVi
dWZmZXJzLnBhdGNoDQpxdWV1ZS02LjE1L2RybS1mcmFtZWJ1ZmZlci1hY3F1aXJlLWludGVybmFs
LXJlZmVyZW5jZXMtb24tZ2VtLWhhbmRsZXMucGF0Y2gNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
