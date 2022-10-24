Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA0C609DDA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Oct 2022 11:19:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 368953F1DE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Oct 2022 09:19:52 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 5B0843E814
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Oct 2022 09:19:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of "SRS0=IBjb=2Z=xs4all.nl=hverkuil@kernel.org" designates 139.178.84.217 as permitted sender) smtp.mailfrom="SRS0=IBjb=2Z=xs4all.nl=hverkuil@kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=xs4all.nl (policy=none)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0E19C6112A;
	Mon, 24 Oct 2022 09:19:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8BE8C433C1;
	Mon, 24 Oct 2022 09:19:26 +0000 (UTC)
Message-ID: <76dc6599-3b24-918c-ba08-77c3192c5c04@xs4all.nl>
Date: Mon, 24 Oct 2022 11:19:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu
 <olvaffe@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Gert Wollny <gert.wollny@collabora.com>,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Daniel Stone <daniel@fooishbar.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Clark <robdclark@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding
 <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas_os@shipmail.org>,
 Qiang Yu <yuq825@gmail.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Amol Maheshwari <amahesh@qti.qualcomm.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Leon Romanovsky <leon@kernel.org>, Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
 Tomi Valkeinen <tomba@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Lucas Stach <l.stach@pengutronix.de>,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 Ruhl Michael J <michael.j.ruhl@intel.com>
References: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
 <20221017172229.42269-14-dmitry.osipenko@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <20221017172229.42269-14-dmitry.osipenko@collabora.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -
X-Rspamd-Queue-Id: 5B0843E814
X-Spamd-Result: default: False [-1.40 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[hverkuil@xs4all.nl,SRS0=IBjb=2Z=xs4all.nl=hverkuil@kernel.org];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[xs4all.nl : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	R_DKIM_NA(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,linux.ie,redhat.com,chromium.org,gmail.com,ffwll.ch,fooishbar.org,linux.intel.com,kernel.org,suse.de,linaro.org,amd.com,samsung.com,intel.com,shipmail.org,qti.qualcomm.com,ziepe.ca,suse.com,epam.com,armlinux.org.uk,pengutronix.de];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com,lists.linaro.org,collabora.com,lists.linux-foundation.org];
	RCPT_COUNT_GT_50(0.00)[52];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hverkuil@xs4all.nl,SRS0=IBjb=2Z=xs4all.nl=hverkuil@kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_FROM(0.00)[xs4all.nl];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[]
Message-ID-Hash: BBRKAYAY6EEE7STYE32FPV2SK4UI4ZX4
X-Message-ID-Hash: BBRKAYAY6EEE7STYE32FPV2SK4UI4ZX4
X-MailFrom: SRS0=IBjb=2Z=xs4all.nl=hverkuil@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 13/21] media: videobuf2: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BBRKAYAY6EEE7STYE32FPV2SK4UI4ZX4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCk9uIDEwLzE3LzIyIDE5OjIyLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6DQo+IFByZXBhcmUg
VjRMMiBtZW1vcnkgYWxsb2NhdG9ycyB0byB0aGUgY29tbW9uIGR5bmFtaWMgZG1hLWJ1ZiBsb2Nr
aW5nDQo+IGNvbnZlbnRpb24gYnkgc3RhcnRpbmcgdG8gdXNlIHRoZSB1bmxvY2tlZCB2ZXJzaW9u
cyBvZiBkbWEtYnVmIEFQSQ0KPiBmdW5jdGlvbnMuDQo+IA0KPiBBY2tlZC1ieTogVG9tYXN6IEZp
Z2EgPHRmaWdhQGNocm9taXVtLm9yZz4NCg0KQWNrZWQtYnk6IEhhbnMgVmVya3VpbCA8aHZlcmt1
aWwtY2lzY29AeHM0YWxsLm5sPg0KDQpUaGFua3MhDQoNCglIYW5zDQoNCj4gQWNrZWQtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gU2lnbmVkLW9mZi1i
eTogRG1pdHJ5IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4NCj4gLS0t
DQo+ICBkcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcu
YyB8IDExICsrKysrKy0tLS0tDQo+ICBkcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlk
ZW9idWYyLWRtYS1zZy5jICAgICB8ICA4ICsrKystLS0tDQo+ICBkcml2ZXJzL21lZGlhL2NvbW1v
bi92aWRlb2J1ZjIvdmlkZW9idWYyLXZtYWxsb2MuYyAgICB8ICA2ICsrKy0tLQ0KPiAgMyBmaWxl
cyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250
aWcuYyBiL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLWNvbnRp
Zy5jDQo+IGluZGV4IDY3OGIzNTk3MTdjNC4uNzlmNGQ4MzAxZmJiIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYw0KPiAr
KysgYi9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcu
Yw0KPiBAQCAtMTAxLDcgKzEwMSw3IEBAIHN0YXRpYyB2b2lkICp2YjJfZGNfdmFkZHIoc3RydWN0
IHZiMl9idWZmZXIgKnZiLCB2b2lkICpidWZfcHJpdikNCj4gIAlpZiAoYnVmLT5kYl9hdHRhY2gp
IHsNCj4gIAkJc3RydWN0IGlvc3lzX21hcCBtYXA7DQo+ICANCj4gLQkJaWYgKCFkbWFfYnVmX3Zt
YXAoYnVmLT5kYl9hdHRhY2gtPmRtYWJ1ZiwgJm1hcCkpDQo+ICsJCWlmICghZG1hX2J1Zl92bWFw
X3VubG9ja2VkKGJ1Zi0+ZGJfYXR0YWNoLT5kbWFidWYsICZtYXApKQ0KPiAgCQkJYnVmLT52YWRk
ciA9IG1hcC52YWRkcjsNCj4gIA0KPiAgCQlyZXR1cm4gYnVmLT52YWRkcjsNCj4gQEAgLTcxMSw3
ICs3MTEsNyBAQCBzdGF0aWMgaW50IHZiMl9kY19tYXBfZG1hYnVmKHZvaWQgKm1lbV9wcml2KQ0K
PiAgCX0NCj4gIA0KPiAgCS8qIGdldCB0aGUgYXNzb2NpYXRlZCBzY2F0dGVybGlzdCBmb3IgdGhp
cyBidWZmZXIgKi8NCj4gLQlzZ3QgPSBkbWFfYnVmX21hcF9hdHRhY2htZW50KGJ1Zi0+ZGJfYXR0
YWNoLCBidWYtPmRtYV9kaXIpOw0KPiArCXNndCA9IGRtYV9idWZfbWFwX2F0dGFjaG1lbnRfdW5s
b2NrZWQoYnVmLT5kYl9hdHRhY2gsIGJ1Zi0+ZG1hX2Rpcik7DQo+ICAJaWYgKElTX0VSUihzZ3Qp
KSB7DQo+ICAJCXByX2VycigiRXJyb3IgZ2V0dGluZyBkbWFidWYgc2NhdHRlcmxpc3RcbiIpOw0K
PiAgCQlyZXR1cm4gLUVJTlZBTDsNCj4gQEAgLTcyMiw3ICs3MjIsOCBAQCBzdGF0aWMgaW50IHZi
Ml9kY19tYXBfZG1hYnVmKHZvaWQgKm1lbV9wcml2KQ0KPiAgCWlmIChjb250aWdfc2l6ZSA8IGJ1
Zi0+c2l6ZSkgew0KPiAgCQlwcl9lcnIoImNvbnRpZ3VvdXMgY2h1bmsgaXMgdG9vIHNtYWxsICVs
dS8lbHVcbiIsDQo+ICAJCSAgICAgICBjb250aWdfc2l6ZSwgYnVmLT5zaXplKTsNCj4gLQkJZG1h
X2J1Zl91bm1hcF9hdHRhY2htZW50KGJ1Zi0+ZGJfYXR0YWNoLCBzZ3QsIGJ1Zi0+ZG1hX2Rpcik7
DQo+ICsJCWRtYV9idWZfdW5tYXBfYXR0YWNobWVudF91bmxvY2tlZChidWYtPmRiX2F0dGFjaCwg
c2d0LA0KPiArCQkJCQkJICBidWYtPmRtYV9kaXIpOw0KPiAgCQlyZXR1cm4gLUVGQVVMVDsNCj4g
IAl9DQo+ICANCj4gQEAgLTc1MCwxMCArNzUxLDEwIEBAIHN0YXRpYyB2b2lkIHZiMl9kY191bm1h
cF9kbWFidWYodm9pZCAqbWVtX3ByaXYpDQo+ICAJfQ0KPiAgDQo+ICAJaWYgKGJ1Zi0+dmFkZHIp
IHsNCj4gLQkJZG1hX2J1Zl92dW5tYXAoYnVmLT5kYl9hdHRhY2gtPmRtYWJ1ZiwgJm1hcCk7DQo+
ICsJCWRtYV9idWZfdnVubWFwX3VubG9ja2VkKGJ1Zi0+ZGJfYXR0YWNoLT5kbWFidWYsICZtYXAp
Ow0KPiAgCQlidWYtPnZhZGRyID0gTlVMTDsNCj4gIAl9DQo+IC0JZG1hX2J1Zl91bm1hcF9hdHRh
Y2htZW50KGJ1Zi0+ZGJfYXR0YWNoLCBzZ3QsIGJ1Zi0+ZG1hX2Rpcik7DQo+ICsJZG1hX2J1Zl91
bm1hcF9hdHRhY2htZW50X3VubG9ja2VkKGJ1Zi0+ZGJfYXR0YWNoLCBzZ3QsIGJ1Zi0+ZG1hX2Rp
cik7DQo+ICANCj4gIAlidWYtPmRtYV9hZGRyID0gMDsNCj4gIAlidWYtPmRtYV9zZ3QgPSBOVUxM
Ow0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVm
Mi1kbWEtc2cuYyBiL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1h
LXNnLmMNCj4gaW5kZXggZmE2OTE1OGE2NWIxLi4zNmVjZGVhOGQ3MDcgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLXNnLmMNCj4gKysr
IGIvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtc2cuYw0KPiBA
QCAtMzA5LDcgKzMwOSw3IEBAIHN0YXRpYyB2b2lkICp2YjJfZG1hX3NnX3ZhZGRyKHN0cnVjdCB2
YjJfYnVmZmVyICp2Yiwgdm9pZCAqYnVmX3ByaXYpDQo+ICANCj4gIAlpZiAoIWJ1Zi0+dmFkZHIp
IHsNCj4gIAkJaWYgKGJ1Zi0+ZGJfYXR0YWNoKSB7DQo+IC0JCQlyZXQgPSBkbWFfYnVmX3ZtYXAo
YnVmLT5kYl9hdHRhY2gtPmRtYWJ1ZiwgJm1hcCk7DQo+ICsJCQlyZXQgPSBkbWFfYnVmX3ZtYXBf
dW5sb2NrZWQoYnVmLT5kYl9hdHRhY2gtPmRtYWJ1ZiwgJm1hcCk7DQo+ICAJCQlidWYtPnZhZGRy
ID0gcmV0ID8gTlVMTCA6IG1hcC52YWRkcjsNCj4gIAkJfSBlbHNlIHsNCj4gIAkJCWJ1Zi0+dmFk
ZHIgPSB2bV9tYXBfcmFtKGJ1Zi0+cGFnZXMsIGJ1Zi0+bnVtX3BhZ2VzLCAtMSk7DQo+IEBAIC01
NjUsNyArNTY1LDcgQEAgc3RhdGljIGludCB2YjJfZG1hX3NnX21hcF9kbWFidWYodm9pZCAqbWVt
X3ByaXYpDQo+ICAJfQ0KPiAgDQo+ICAJLyogZ2V0IHRoZSBhc3NvY2lhdGVkIHNjYXR0ZXJsaXN0
IGZvciB0aGlzIGJ1ZmZlciAqLw0KPiAtCXNndCA9IGRtYV9idWZfbWFwX2F0dGFjaG1lbnQoYnVm
LT5kYl9hdHRhY2gsIGJ1Zi0+ZG1hX2Rpcik7DQo+ICsJc2d0ID0gZG1hX2J1Zl9tYXBfYXR0YWNo
bWVudF91bmxvY2tlZChidWYtPmRiX2F0dGFjaCwgYnVmLT5kbWFfZGlyKTsNCj4gIAlpZiAoSVNf
RVJSKHNndCkpIHsNCj4gIAkJcHJfZXJyKCJFcnJvciBnZXR0aW5nIGRtYWJ1ZiBzY2F0dGVybGlz
dFxuIik7DQo+ICAJCXJldHVybiAtRUlOVkFMOw0KPiBAQCAtNTk0LDEwICs1OTQsMTAgQEAgc3Rh
dGljIHZvaWQgdmIyX2RtYV9zZ191bm1hcF9kbWFidWYodm9pZCAqbWVtX3ByaXYpDQo+ICAJfQ0K
PiAgDQo+ICAJaWYgKGJ1Zi0+dmFkZHIpIHsNCj4gLQkJZG1hX2J1Zl92dW5tYXAoYnVmLT5kYl9h
dHRhY2gtPmRtYWJ1ZiwgJm1hcCk7DQo+ICsJCWRtYV9idWZfdnVubWFwX3VubG9ja2VkKGJ1Zi0+
ZGJfYXR0YWNoLT5kbWFidWYsICZtYXApOw0KPiAgCQlidWYtPnZhZGRyID0gTlVMTDsNCj4gIAl9
DQo+IC0JZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50KGJ1Zi0+ZGJfYXR0YWNoLCBzZ3QsIGJ1Zi0+
ZG1hX2Rpcik7DQo+ICsJZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50X3VubG9ja2VkKGJ1Zi0+ZGJf
YXR0YWNoLCBzZ3QsIGJ1Zi0+ZG1hX2Rpcik7DQo+ICANCj4gIAlidWYtPmRtYV9zZ3QgPSBOVUxM
Ow0KPiAgfQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3Zp
ZGVvYnVmMi12bWFsbG9jLmMgYi9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9i
dWYyLXZtYWxsb2MuYw0KPiBpbmRleCA5NDgxNTJmMTU5NmIuLjc4MzFiZjU0NTg3NCAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi12bWFsbG9j
LmMNCj4gKysrIGIvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi12bWFs
bG9jLmMNCj4gQEAgLTM3Niw3ICszNzYsNyBAQCBzdGF0aWMgaW50IHZiMl92bWFsbG9jX21hcF9k
bWFidWYodm9pZCAqbWVtX3ByaXYpDQo+ICAJc3RydWN0IGlvc3lzX21hcCBtYXA7DQo+ICAJaW50
IHJldDsNCj4gIA0KPiAtCXJldCA9IGRtYV9idWZfdm1hcChidWYtPmRidWYsICZtYXApOw0KPiAr
CXJldCA9IGRtYV9idWZfdm1hcF91bmxvY2tlZChidWYtPmRidWYsICZtYXApOw0KPiAgCWlmIChy
ZXQpDQo+ICAJCXJldHVybiAtRUZBVUxUOw0KPiAgCWJ1Zi0+dmFkZHIgPSBtYXAudmFkZHI7DQo+
IEBAIC0zODksNyArMzg5LDcgQEAgc3RhdGljIHZvaWQgdmIyX3ZtYWxsb2NfdW5tYXBfZG1hYnVm
KHZvaWQgKm1lbV9wcml2KQ0KPiAgCXN0cnVjdCB2YjJfdm1hbGxvY19idWYgKmJ1ZiA9IG1lbV9w
cml2Ow0KPiAgCXN0cnVjdCBpb3N5c19tYXAgbWFwID0gSU9TWVNfTUFQX0lOSVRfVkFERFIoYnVm
LT52YWRkcik7DQo+ICANCj4gLQlkbWFfYnVmX3Z1bm1hcChidWYtPmRidWYsICZtYXApOw0KPiAr
CWRtYV9idWZfdnVubWFwX3VubG9ja2VkKGJ1Zi0+ZGJ1ZiwgJm1hcCk7DQo+ICAJYnVmLT52YWRk
ciA9IE5VTEw7DQo+ICB9DQo+ICANCj4gQEAgLTM5OSw3ICszOTksNyBAQCBzdGF0aWMgdm9pZCB2
YjJfdm1hbGxvY19kZXRhY2hfZG1hYnVmKHZvaWQgKm1lbV9wcml2KQ0KPiAgCXN0cnVjdCBpb3N5
c19tYXAgbWFwID0gSU9TWVNfTUFQX0lOSVRfVkFERFIoYnVmLT52YWRkcik7DQo+ICANCj4gIAlp
ZiAoYnVmLT52YWRkcikNCj4gLQkJZG1hX2J1Zl92dW5tYXAoYnVmLT5kYnVmLCAmbWFwKTsNCj4g
KwkJZG1hX2J1Zl92dW5tYXBfdW5sb2NrZWQoYnVmLT5kYnVmLCAmbWFwKTsNCj4gIA0KPiAgCWtm
cmVlKGJ1Zik7DQo+ICB9DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
