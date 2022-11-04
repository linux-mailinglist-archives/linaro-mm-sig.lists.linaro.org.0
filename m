Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1301A6194B3
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 11:42:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1D1813F061
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 10:42:47 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 954193EC14
	for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Nov 2022 10:42:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of "SRS0=u6xH=3E=xs4all.nl=hverkuil@kernel.org" designates 145.40.68.75 as permitted sender) smtp.mailfrom="SRS0=u6xH=3E=xs4all.nl=hverkuil@kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=xs4all.nl (policy=none)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A3AE0B82C7A;
	Fri,  4 Nov 2022 10:42:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17ED7C433C1;
	Fri,  4 Nov 2022 10:42:24 +0000 (UTC)
Message-ID: <bd50df70-1a8b-08c4-1ad1-f9b23a77c1df@xs4all.nl>
Date: Fri, 4 Nov 2022 11:42:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 l.stach@pengutronix.de, nicolas@ndufresne.ca, ppaalanen@gmail.com,
 sumit.semwal@linaro.org, daniel@ffwll.ch, robdclark@gmail.com,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org
References: <20221020121316.3946-1-christian.koenig@amd.com>
 <20221020121316.3946-4-christian.koenig@amd.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <20221020121316.3946-4-christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -
X-Rspamd-Queue-Id: 954193EC14
X-Spamd-Result: default: False [-1.40 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[hverkuil@xs4all.nl,SRS0=u6xH=3E=xs4all.nl=hverkuil@kernel.org];
	R_SPF_ALLOW(-0.20)[+a:ams.source.kernel.org];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[xs4all.nl : SPF not aligned (relaxed), No valid DKIM,none];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
	FROM_NEQ_ENVFROM(0.00)[hverkuil@xs4all.nl,SRS0=u6xH=3E=xs4all.nl=hverkuil@kernel.org];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_TO(0.00)[gmail.com,pengutronix.de,ndufresne.ca,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[xs4all.nl:email,ams.source.kernel.org:helo,ams.source.kernel.org:rdns];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[xs4all.nl];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_TLS_ALL(0.00)[]
Message-ID-Hash: IRIWIYBGNRGZR4MSVAODFBS6W6JOUNES
X-Message-ID-Hash: IRIWIYBGNRGZR4MSVAODFBS6W6JOUNES
X-MailFrom: SRS0=u6xH=3E=xs4all.nl=hverkuil@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/3] media: videobuf2: set dma_coherent flag for DMA-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IRIWIYBGNRGZR4MSVAODFBS6W6JOUNES/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuLA0KDQpPbiAyMC8xMC8yMDIyIDE0OjEzLCBDaHJpc3RpYW4gS8O2bmlnIHdy
b3RlOg0KPiBXaGVuIGEgZGV2aWNlIGlzIHNub29waW5nIHRoZSBDUFUgY2FjaGUgd2UgYXNzdW1l
IHRoYXQgYWxsIGltcG9ydGVycw0KPiBtdXN0IHNub29wIHRoZSBDUFUgY2FjaGUgYXMgd2VsbC4N
Cj4gDQo+IEV4ZWNwdCBmb3Igdm1hbGxvYyBhbGxvY2F0aW9ucyBzaW5jZSB0aG9zZSBpbXBsZW1l
bnQgbW1hcCgpIGltcG9ydHMgbXVzdA0KPiBhbHdheXMgc25vb3AgdGhlIGNhY2hlIG9yIHdlIHdp
bGwgcnVuIGludG8gY29oZXJlbmN5IHByb2JsZW1zLg0KDQpMb29rcyByZWFzb25hYmxlLg0KDQpG
b3IgdGhpcyBzZXJpZXM6DQoNCkFja2VkLWJ5OiBIYW5zIFZlcmt1aWwgPGh2ZXJrdWlsLWNpc2Nv
QHhzNGFsbC5ubD4NCg0KUmVnYXJkcywNCg0KCUhhbnMNCg0KPiANCj4gU2lnbmVkLW9mZi1ieTog
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiAtLS0NCj4gIGRy
aXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLWNvbnRpZy5jIHwgMiAr
Kw0KPiAgZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtc2cuYyAg
ICAgfCAyICsrDQo+ICBkcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLXZt
YWxsb2MuYyAgICB8IDEgKw0KPiAgMyBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYy
LWRtYS1jb250aWcuYyBiL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjIt
ZG1hLWNvbnRpZy5jDQo+IGluZGV4IDU1NWJkNDBmYTQ3Mi4uNTc0MzMzMTBjNTVjIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250
aWcuYw0KPiArKysgYi9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRt
YS1jb250aWcuYw0KPiBAQCAtMTEsNiArMTEsNyBAQA0KPiAgICovDQo+ICANCj4gICNpbmNsdWRl
IDxsaW51eC9kbWEtYnVmLmg+DQo+ICsjaW5jbHVkZSA8bGludXgvZG1hLW1hcC1vcHMuaD4NCj4g
ICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4NCj4gICNpbmNsdWRlIDxsaW51eC9yZWZjb3VudC5o
Pg0KPiAgI2luY2x1ZGUgPGxpbnV4L3NjYXR0ZXJsaXN0Lmg+DQo+IEBAIC01MDcsNiArNTA4LDcg
QEAgc3RhdGljIHN0cnVjdCBkbWFfYnVmICp2YjJfZGNfZ2V0X2RtYWJ1ZihzdHJ1Y3QgdmIyX2J1
ZmZlciAqdmIsDQo+ICAJZXhwX2luZm8uc2l6ZSA9IGJ1Zi0+c2l6ZTsNCj4gIAlleHBfaW5mby5m
bGFncyA9IGZsYWdzOw0KPiAgCWV4cF9pbmZvLnByaXYgPSBidWY7DQo+ICsJZXhwX2luZm8uY29o
ZXJlbnQgPSBkZXZfaXNfZG1hX2NvaGVyZW50KHZiLT52YjJfcXVldWUtPmRldik7DQo+ICANCj4g
IAlpZiAoIWJ1Zi0+c2d0X2Jhc2UpDQo+ICAJCWJ1Zi0+c2d0X2Jhc2UgPSB2YjJfZGNfZ2V0X2Jh
c2Vfc2d0KGJ1Zik7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1
ZjIvdmlkZW9idWYyLWRtYS1zZy5jIGIvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3Zp
ZGVvYnVmMi1kbWEtc2cuYw0KPiBpbmRleCAzNjk4MWE1YjVjNTMuLmRiZGQ3NTNlNGEzOSAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEt
c2cuYw0KPiArKysgYi9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRt
YS1zZy5jDQo+IEBAIC0xMCw2ICsxMCw3IEBADQo+ICAgKiB0aGUgRnJlZSBTb2Z0d2FyZSBGb3Vu
ZGF0aW9uLg0KPiAgICovDQo+ICANCj4gKyNpbmNsdWRlIDxsaW51eC9kbWEtbWFwLW9wcy5oPg0K
PiAgI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPg0KPiAgI2luY2x1ZGUgPGxpbnV4L21tLmg+DQo+
ICAjaW5jbHVkZSA8bGludXgvcmVmY291bnQuaD4NCj4gQEAgLTUyMiw2ICs1MjMsNyBAQCBzdGF0
aWMgc3RydWN0IGRtYV9idWYgKnZiMl9kbWFfc2dfZ2V0X2RtYWJ1ZihzdHJ1Y3QgdmIyX2J1ZmZl
ciAqdmIsDQo+ICAJZXhwX2luZm8uc2l6ZSA9IGJ1Zi0+c2l6ZTsNCj4gIAlleHBfaW5mby5mbGFn
cyA9IGZsYWdzOw0KPiAgCWV4cF9pbmZvLnByaXYgPSBidWY7DQo+ICsJZXhwX2luZm8uY29oZXJl
bnQgPSBkZXZfaXNfZG1hX2NvaGVyZW50KHZiLT52YjJfcXVldWUtPmRldik7DQo+ICANCj4gIAlp
ZiAoV0FSTl9PTighYnVmLT5kbWFfc2d0KSkNCj4gIAkJcmV0dXJuIE5VTEw7DQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLXZtYWxsb2MuYyBi
L2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItdm1hbGxvYy5jDQo+IGlu
ZGV4IDQxZGI3MDdlNDNhNC4uMGI2ODc0NzMzZTg2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL21l
ZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLXZtYWxsb2MuYw0KPiArKysgYi9kcml2ZXJz
L21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLXZtYWxsb2MuYw0KPiBAQCAtMzQxLDYg
KzM0MSw3IEBAIHN0YXRpYyBzdHJ1Y3QgZG1hX2J1ZiAqdmIyX3ZtYWxsb2NfZ2V0X2RtYWJ1Zihz
dHJ1Y3QgdmIyX2J1ZmZlciAqdmIsDQo+ICAJZXhwX2luZm8uc2l6ZSA9IGJ1Zi0+c2l6ZTsNCj4g
IAlleHBfaW5mby5mbGFncyA9IGZsYWdzOw0KPiAgCWV4cF9pbmZvLnByaXYgPSBidWY7DQo+ICsJ
ZXhwX2luZm8uY29oZXJlbnQgPSB0cnVlOw0KPiAgDQo+ICAJaWYgKFdBUk5fT04oIWJ1Zi0+dmFk
ZHIpKQ0KPiAgCQlyZXR1cm4gTlVMTDsNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
