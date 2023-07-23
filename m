Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2682775E27A
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 23 Jul 2023 16:15:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C0D2943F0C
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 23 Jul 2023 14:15:10 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 89E703E940
	for <linaro-mm-sig@lists.linaro.org>; Sun, 23 Jul 2023 14:15:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=MQAowYXV;
	spf=pass (lists.linaro.org: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DBA4160D33;
	Sun, 23 Jul 2023 14:14:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBCA1C433C7;
	Sun, 23 Jul 2023 14:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1690121699;
	bh=Sgd9xEr8wwi3+xAPT7emk06pyo2sWpMIHTVlS7rCqL8=;
	h=Subject:To:Cc:From:Date:From;
	b=MQAowYXVjoRTb04UmBmCmQLh2RoLPsG+sdagvzNUb/7dUsgyy9YyfHb3X4g08UytM
	 eu4vn3DZFjI/jx9CSbC+sR3imnN6p4jYve85iOnotlAponumnui9IUnA0BfXbQGFeB
	 0/rt56q8foEq6Sz/r8gObHoj1Wobud7HTreTWz9Q=
To: christian.koenig@amd.com,dri-devel@lists.freedesktop.org,gregkh@linuxfoundation.org,linaro-mm-sig@lists.linaro.org,sumit.semwal@linaro.org,ville.syrjala@linux.intel.com
From: <gregkh@linuxfoundation.org>
Date: Sun, 23 Jul 2023 16:13:00 +0200
Message-ID: <2023072359-headset-penpal-f940@gregkh>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 89E703E940
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.00 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	DWL_DNSWL_HI(-3.50)[linuxfoundation.org:dkim];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[7];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	RCVD_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_DN_NONE(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[]
Message-ID-Hash: TAOU45MA5U4I3AT3Y7RUOBIE2T7OLPDK
X-Message-ID-Hash: TAOU45MA5U4I3AT3Y7RUOBIE2T7OLPDK
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: stable-commits@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Patch "dma-buf/dma-resv: Stop leaking on krealloc() failure" has been added to the 6.1-stable tree
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TAOU45MA5U4I3AT3Y7RUOBIE2T7OLPDK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpUaGlzIGlzIGEgbm90ZSB0byBsZXQgeW91IGtub3cgdGhhdCBJJ3ZlIGp1c3QgYWRkZWQgdGhl
IHBhdGNoIHRpdGxlZA0KDQogICAgZG1hLWJ1Zi9kbWEtcmVzdjogU3RvcCBsZWFraW5nIG9uIGty
ZWFsbG9jKCkgZmFpbHVyZQ0KDQp0byB0aGUgNi4xLXN0YWJsZSB0cmVlIHdoaWNoIGNhbiBiZSBm
b3VuZCBhdDoNCiAgICBodHRwOi8vd3d3Lmtlcm5lbC5vcmcvZ2l0Lz9wPWxpbnV4L2tlcm5lbC9n
aXQvc3RhYmxlL3N0YWJsZS1xdWV1ZS5naXQ7YT1zdW1tYXJ5DQoNClRoZSBmaWxlbmFtZSBvZiB0
aGUgcGF0Y2ggaXM6DQogICAgIGRtYS1idWYtZG1hLXJlc3Ytc3RvcC1sZWFraW5nLW9uLWtyZWFs
bG9jLWZhaWx1cmUucGF0Y2gNCmFuZCBpdCBjYW4gYmUgZm91bmQgaW4gdGhlIHF1ZXVlLTYuMSBz
dWJkaXJlY3RvcnkuDQoNCklmIHlvdSwgb3IgYW55b25lIGVsc2UsIGZlZWxzIGl0IHNob3VsZCBu
b3QgYmUgYWRkZWQgdG8gdGhlIHN0YWJsZSB0cmVlLA0KcGxlYXNlIGxldCA8c3RhYmxlQHZnZXIu
a2VybmVsLm9yZz4ga25vdyBhYm91dCBpdC4NCg0KDQo+RnJvbSAwNWFiYjNiZTkxZDg3ODgzMjgy
MzFlZTAyOTczYWIzZDQ3ZjVlM2QyIE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQ0KRnJvbTogPT9V
VEYtOD9xP1ZpbGxlPTIwU3lyaj1DMz1BNGw9QzM9QTQ/PSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQpEYXRlOiBUaHUsIDEzIEp1bCAyMDIzIDIyOjQ3OjQ1ICswMzAwDQpTdWJqZWN0
OiBkbWEtYnVmL2RtYS1yZXN2OiBTdG9wIGxlYWtpbmcgb24ga3JlYWxsb2MoKSBmYWlsdXJlDQpN
SU1FLVZlcnNpb246IDEuMA0KQ29udGVudC1UeXBlOiB0ZXh0L3BsYWluOyBjaGFyc2V0PVVURi04
DQpDb250ZW50LVRyYW5zZmVyLUVuY29kaW5nOiA4Yml0DQoNCkZyb206IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNCmNvbW1pdCAwNWFiYjNiZTkxZDg3
ODgzMjgyMzFlZTAyOTczYWIzZDQ3ZjVlM2QyIHVwc3RyZWFtLg0KDQpDdXJyZW50bHkgZG1hX3Jl
c3ZfZ2V0X2ZlbmNlcygpIHdpbGwgbGVhayB0aGUgcHJldmlvdXNseQ0KYWxsb2NhdGVkIGFycmF5
IGlmIHRoZSBmZW5jZSBpdGVyYXRpb24gZ290IHJlc3RhcnRlZCBhbmQNCnRoZSBrcmVhbGxvY19h
cnJheSgpIGZhaWxzLg0KDQpGcmVlIHRoZSBvbGQgYXJyYXkgYnkgaGFuZCwgYW5kIG1ha2Ugc3Vy
ZSB3ZSBzdGlsbCBjbGVhcg0KdGhlIHJldHVybmVkICpmZW5jZXMgc28gdGhlIGNhbGxlciB3b24n
dCBlbmQgdXAgYWNjZXNzaW5nDQpmcmVlZCBtZW1vcnkuIFNvbWUgKGJ1dCBub3QgYWxsKSBvZiB0
aGUgY2FsbGVycyBvZg0KZG1hX3Jlc3ZfZ2V0X2ZlbmNlcygpIHNlZW0gdG8gc3RpbGwgdHJhd2wg
dGhyb3VnaCB0aGUNCmFycmF5IGV2ZW4gd2hlbiBkbWFfcmVzdl9nZXRfZmVuY2VzKCkgZmFpbGVk
LiBBbmQgbGV0J3MNCnplcm8gb3V0ICpudW1fZmVuY2VzIGFzIHdlbGwgZm9yIGdvb2QgbWVhc3Vy
ZS4NCg0KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+DQpDYzogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ2M6IGxpbnV4LW1lZGlh
QHZnZXIua2VybmVsLm9yZw0KQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNj
OiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCkZpeGVzOiBkM2M4MDY5OGM5ZjUgKCJk
bWEtYnVmOiB1c2UgbmV3IGl0ZXJhdG9yIGluIGRtYV9yZXN2X2dldF9mZW5jZXMgdjMiKQ0KU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+DQpDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZw0KTGluazogaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMjMwNzEzMTk0NzQ1LjE3NTEtMS12aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbQ0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KU2lnbmVkLW9mZi1ieTogR3JlZyBLcm9haC1IYXJ0
bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9k
bWEtcmVzdi5jIHwgICAxMyArKysrKysrKystLS0tDQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCg0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2
LmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQpAQCAtNTY2LDYgKzU2Niw3IEBA
IGludCBkbWFfcmVzdl9nZXRfZmVuY2VzKHN0cnVjdCBkbWFfcmVzdg0KIAlkbWFfcmVzdl9mb3Jf
ZWFjaF9mZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgew0KIA0KIAkJaWYgKGRtYV9yZXN2
X2l0ZXJfaXNfcmVzdGFydGVkKCZjdXJzb3IpKSB7DQorCQkJc3RydWN0IGRtYV9mZW5jZSAqKm5l
d19mZW5jZXM7DQogCQkJdW5zaWduZWQgaW50IGNvdW50Ow0KIA0KIAkJCXdoaWxlICgqbnVtX2Zl
bmNlcykNCkBAIC01NzQsMTMgKzU3NSwxNyBAQCBpbnQgZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyhzdHJ1
Y3QgZG1hX3Jlc3YNCiAJCQljb3VudCA9IGN1cnNvci5udW1fZmVuY2VzICsgMTsNCiANCiAJCQkv
KiBFdmVudHVhbGx5IHJlLWFsbG9jYXRlIHRoZSBhcnJheSAqLw0KLQkJCSpmZW5jZXMgPSBrcmVh
bGxvY19hcnJheSgqZmVuY2VzLCBjb3VudCwNCi0JCQkJCQkgc2l6ZW9mKHZvaWQgKiksDQotCQkJ
CQkJIEdGUF9LRVJORUwpOw0KLQkJCWlmIChjb3VudCAmJiAhKmZlbmNlcykgew0KKwkJCW5ld19m
ZW5jZXMgPSBrcmVhbGxvY19hcnJheSgqZmVuY2VzLCBjb3VudCwNCisJCQkJCQkgICAgc2l6ZW9m
KHZvaWQgKiksDQorCQkJCQkJICAgIEdGUF9LRVJORUwpOw0KKwkJCWlmIChjb3VudCAmJiAhbmV3
X2ZlbmNlcykgew0KKwkJCQlrZnJlZSgqZmVuY2VzKTsNCisJCQkJKmZlbmNlcyA9IE5VTEw7DQor
CQkJCSpudW1fZmVuY2VzID0gMDsNCiAJCQkJZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7DQog
CQkJCXJldHVybiAtRU5PTUVNOw0KIAkJCX0NCisJCQkqZmVuY2VzID0gbmV3X2ZlbmNlczsNCiAJ
CX0NCiANCiAJCSgqZmVuY2VzKVsoKm51bV9mZW5jZXMpKytdID0gZG1hX2ZlbmNlX2dldChmZW5j
ZSk7DQoNCg0KUGF0Y2hlcyBjdXJyZW50bHkgaW4gc3RhYmxlLXF1ZXVlIHdoaWNoIG1pZ2h0IGJl
IGZyb20gdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20gYXJlDQoNCnF1ZXVlLTYuMS9kbWEt
YnVmLWRtYS1yZXN2LXN0b3AtbGVha2luZy1vbi1rcmVhbGxvYy1mYWlsdXJlLnBhdGNoDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
