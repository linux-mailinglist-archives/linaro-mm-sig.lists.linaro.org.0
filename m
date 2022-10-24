Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE86609DCA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Oct 2022 11:18:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C9AA83F1DE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Oct 2022 09:18:27 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id ECC763E814
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Oct 2022 09:18:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of "SRS0=IBjb=2Z=xs4all.nl=hverkuil@kernel.org" designates 145.40.68.75 as permitted sender) smtp.mailfrom="SRS0=IBjb=2Z=xs4all.nl=hverkuil@kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=xs4all.nl (policy=none)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id C13D5B8100E;
	Mon, 24 Oct 2022 09:18:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E91FC433D6;
	Mon, 24 Oct 2022 09:18:00 +0000 (UTC)
Message-ID: <9781200b-2d6e-b401-abc5-559410b1a435@xs4all.nl>
Date: Mon, 24 Oct 2022 11:17:58 +0200
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
 <20221017172229.42269-15-dmitry.osipenko@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <20221017172229.42269-15-dmitry.osipenko@collabora.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -
X-Rspamd-Queue-Id: ECC763E814
X-Spamd-Result: default: False [-1.40 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[hverkuil@xs4all.nl,SRS0=IBjb=2Z=xs4all.nl=hverkuil@kernel.org];
	R_SPF_ALLOW(-0.20)[+a:ams.source.kernel.org];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[xs4all.nl : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com,lists.linaro.org,collabora.com,lists.linux-foundation.org];
	R_DKIM_NA(0.00)[];
	RCPT_COUNT_GT_50(0.00)[52];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
	FREEMAIL_TO(0.00)[collabora.com,linux.ie,redhat.com,chromium.org,gmail.com,ffwll.ch,fooishbar.org,linux.intel.com,kernel.org,suse.de,linaro.org,amd.com,samsung.com,intel.com,shipmail.org,qti.qualcomm.com,ziepe.ca,suse.com,epam.com,armlinux.org.uk,pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_FROM(0.00)[xs4all.nl];
	TAGGED_RCPT(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hverkuil@xs4all.nl,SRS0=IBjb=2Z=xs4all.nl=hverkuil@kernel.org]
Message-ID-Hash: KYYJ6JQDORVOAB5TQIEKB2JRVKVPYB6U
X-Message-ID-Hash: KYYJ6JQDORVOAB5TQIEKB2JRVKVPYB6U
X-MailFrom: SRS0=IBjb=2Z=xs4all.nl=hverkuil@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 14/21] media: tegra-vde: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KYYJ6JQDORVOAB5TQIEKB2JRVKVPYB6U/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCk9uIDEwLzE3LzIyIDE5OjIyLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6DQo+IFByZXBhcmUg
VGVncmEgdmlkZW8gZGVjb2RlciBkcml2ZXIgdG8gdGhlIGNvbW1vbiBkeW5hbWljIGRtYS1idWYN
Cj4gbG9ja2luZyBjb252ZW50aW9uIGJ5IHN0YXJ0aW5nIHRvIHVzZSB0aGUgdW5sb2NrZWQgdmVy
c2lvbnMgb2YgZG1hLWJ1Zg0KPiBBUEkgZnVuY3Rpb25zLg0KPiANCj4gQWNrZWQtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCg0KQWNrZWQtYnk6IEhhbnMg
VmVya3VpbCA8aHZlcmt1aWwtY2lzY29AeHM0YWxsLm5sPg0KDQpUaGFua3MhDQoNCglIYW5zDQoN
Cj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFi
b3JhLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL252aWRpYS90ZWdyYS12
ZGUvZG1hYnVmLWNhY2hlLmMgfCA2ICsrKy0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL252aWRpYS90ZWdyYS12ZGUvZG1hYnVmLWNhY2hlLmMgYi9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL252aWRpYS90ZWdyYS12ZGUvZG1hYnVmLWNhY2hlLmMNCj4gaW5kZXggNjljMzQ2
MTQ4MDcwLi4xYzViOTQ5ODlhZWMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vbnZpZGlhL3RlZ3JhLXZkZS9kbWFidWYtY2FjaGUuYw0KPiArKysgYi9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL252aWRpYS90ZWdyYS12ZGUvZG1hYnVmLWNhY2hlLmMNCj4gQEAgLTM4LDcgKzM4
LDcgQEAgc3RhdGljIHZvaWQgdGVncmFfdmRlX3JlbGVhc2VfZW50cnkoc3RydWN0IHRlZ3JhX3Zk
ZV9jYWNoZV9lbnRyeSAqZW50cnkpDQo+ICAJaWYgKGVudHJ5LT52ZGUtPmRvbWFpbikNCj4gIAkJ
dGVncmFfdmRlX2lvbW11X3VubWFwKGVudHJ5LT52ZGUsIGVudHJ5LT5pb3ZhKTsNCj4gIA0KPiAt
CWRtYV9idWZfdW5tYXBfYXR0YWNobWVudChlbnRyeS0+YSwgZW50cnktPnNndCwgZW50cnktPmRt
YV9kaXIpOw0KPiArCWRtYV9idWZfdW5tYXBfYXR0YWNobWVudF91bmxvY2tlZChlbnRyeS0+YSwg
ZW50cnktPnNndCwgZW50cnktPmRtYV9kaXIpOw0KPiAgCWRtYV9idWZfZGV0YWNoKGRtYWJ1Ziwg
ZW50cnktPmEpOw0KPiAgCWRtYV9idWZfcHV0KGRtYWJ1Zik7DQo+ICANCj4gQEAgLTEwMiw3ICsx
MDIsNyBAQCBpbnQgdGVncmFfdmRlX2RtYWJ1Zl9jYWNoZV9tYXAoc3RydWN0IHRlZ3JhX3ZkZSAq
dmRlLA0KPiAgCQlnb3RvIGVycl91bmxvY2s7DQo+ICAJfQ0KPiAgDQo+IC0Jc2d0ID0gZG1hX2J1
Zl9tYXBfYXR0YWNobWVudChhdHRhY2htZW50LCBkbWFfZGlyKTsNCj4gKwlzZ3QgPSBkbWFfYnVm
X21hcF9hdHRhY2htZW50X3VubG9ja2VkKGF0dGFjaG1lbnQsIGRtYV9kaXIpOw0KPiAgCWlmIChJ
U19FUlIoc2d0KSkgew0KPiAgCQlkZXZfZXJyKGRldiwgIkZhaWxlZCB0byBnZXQgZG1hYnVmcyBz
Z190YWJsZVxuIik7DQo+ICAJCWVyciA9IFBUUl9FUlIoc2d0KTsNCj4gQEAgLTE1Miw3ICsxNTIs
NyBAQCBpbnQgdGVncmFfdmRlX2RtYWJ1Zl9jYWNoZV9tYXAoc3RydWN0IHRlZ3JhX3ZkZSAqdmRl
LA0KPiAgZXJyX2ZyZWU6DQo+ICAJa2ZyZWUoZW50cnkpOw0KPiAgZXJyX3VubWFwOg0KPiAtCWRt
YV9idWZfdW5tYXBfYXR0YWNobWVudChhdHRhY2htZW50LCBzZ3QsIGRtYV9kaXIpOw0KPiArCWRt
YV9idWZfdW5tYXBfYXR0YWNobWVudF91bmxvY2tlZChhdHRhY2htZW50LCBzZ3QsIGRtYV9kaXIp
Ow0KPiAgZXJyX2RldGFjaDoNCj4gIAlkbWFfYnVmX2RldGFjaChkbWFidWYsIGF0dGFjaG1lbnQp
Ow0KPiAgZXJyX3VubG9jazoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
