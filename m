Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C3E5F8888
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  9 Oct 2022 02:09:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ACAE43F547
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  9 Oct 2022 00:09:22 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 37E0D3ECD4
	for <linaro-mm-sig@lists.linaro.org>; Sun,  9 Oct 2022 00:09:04 +0000 (UTC)
Received: from [192.168.2.145] (109-252-119-114.nat.spd-mgts.ru [109.252.119.114])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AD61E6602303;
	Sun,  9 Oct 2022 01:08:59 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1665274142;
	bh=tRu/AWDhf1iOYLNP6D5ccZEJMnF9oPGtd04+Gk3jRuA=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=fH3GVJPP0Agx7FoWitfSeocWjORT1LvnTSnPwSqsxinARwwXtUpOaikNENp0bqUrC
	 PEWSWFEjMZP7lDmv6EU2Grv25zWS7RZ/h7CyD+7zKtjl4QAfnnCEScMPlrHhseb+En
	 Gz6vFJUxlSWNVwbR41RbruaqwCZ47lCdToK+BcEO9GuR8so0PP/P07QqERBUWyAJVb
	 MMo4+FZKLISPnrknOSkksa6Ta/zh2p7kUJ5bKem5cyumvth/JLc9RmmGae3HPvGZFj
	 1usDID4w07q/Pi3FDQyJlsU/m9taGaBUzV9f+UEhS80kUisNvUwJDrtVlek5svMZjQ
	 SedcaWbpdnMdw==
Message-ID: <e3ba146d-8153-add5-2cf4-02fe6519abee@collabora.com>
Date: Sun, 9 Oct 2022 03:08:56 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>
References: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
 <20220928191600.5874-11-dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <20220928191600.5874-11-dmitry.osipenko@collabora.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --------
X-Rspamd-Queue-Id: 37E0D3ECD4
X-Spamd-Result: default: False [-8.00 / 15.00];
	DWL_DNSWL_HI(-3.50)[collabora.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[46.235.227.172:from,109.252.119.114:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_GT_50(0.00)[51];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com,lists.linaro.org,collabora.com,lists.linux-foundation.org,linux.ie,redhat.com,chromium.org,ffwll.ch,fooishbar.org,linux.intel.com,kernel.org,suse.de,linaro.org,amd.com,samsung.com,intel.com,shipmail.org,qti.qualcomm.com,suse.com,epam.com,armlinux.org.uk,pengutronix.de];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=fH3GVJPP;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Message-ID-Hash: IS4VPPEPRTO6FO2FDCOKEHNTUWZCBTQE
X-Message-ID-Hash: IS4VPPEPRTO6FO2FDCOKEHNTUWZCBTQE
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org, David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Daniel Almeida <daniel.almeida@collabora.com>, Gert Wollny <gert.wollny@collabora.com>, Gustavo Padovan <gustavo.padovan@collabora.com>, Daniel Stone <daniel@fooishbar.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "Pan, Xinhui" <
 Xinhui.Pan@amd.com>, Thierry Reding <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Alex Deucher <alexander.deucher@amd.com>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Qiang Yu <yuq825@gmail.com>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Amol Maheshwari <amahesh@qti.qualcomm.com>, Juergen Gross <jgross@suse.com>, Stefano Stabellini <sstabellini@kernel.org>, Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>, Tomi Valkeinen <tomba@kernel.org>, Russell King <linux@armlinux.org.uk>, Christian Gmeiner <christian.gmeiner@gmail.com>, Ruhl Michael J <michael.j.ruhl@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 10/21] RDMA/umem: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IS4VPPEPRTO6FO2FDCOKEHNTUWZCBTQE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gOS8yOC8yMiAyMjoxNSwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOg0KPiBQcmVwYXJlIEluZmlu
aUJhbmQgZHJpdmVycyB0byB0aGUgY29tbW9uIGR5bmFtaWMgZG1hLWJ1ZiBsb2NraW5nDQo+IGNv
bnZlbnRpb24gYnkgc3RhcnRpbmcgdG8gdXNlIHRoZSB1bmxvY2tlZCB2ZXJzaW9ucyBvZiBkbWEt
YnVmIEFQSQ0KPiBmdW5jdGlvbnMuDQo+IA0KPiBBY2tlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVu
a28gPGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvaW5m
aW5pYmFuZC9jb3JlL3VtZW1fZG1hYnVmLmMgfCA3ICsrKystLS0NCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9pbmZpbmliYW5kL2NvcmUvdW1lbV9kbWFidWYuYyBiL2RyaXZlcnMvaW5maW5pYmFuZC9j
b3JlL3VtZW1fZG1hYnVmLmMNCj4gaW5kZXggMDRjMDRlNmQyNGMzLi40M2IyNmJjMTIyODggMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvaW5maW5pYmFuZC9jb3JlL3VtZW1fZG1hYnVmLmMNCj4gKysr
IGIvZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvdW1lbV9kbWFidWYuYw0KPiBAQCAtMjYsNyArMjYs
OCBAQCBpbnQgaWJfdW1lbV9kbWFidWZfbWFwX3BhZ2VzKHN0cnVjdCBpYl91bWVtX2RtYWJ1ZiAq
dW1lbV9kbWFidWYpDQo+ICAJaWYgKHVtZW1fZG1hYnVmLT5zZ3QpDQo+ICAJCWdvdG8gd2FpdF9m
ZW5jZTsNCj4gIA0KPiAtCXNndCA9IGRtYV9idWZfbWFwX2F0dGFjaG1lbnQodW1lbV9kbWFidWYt
PmF0dGFjaCwgRE1BX0JJRElSRUNUSU9OQUwpOw0KPiArCXNndCA9IGRtYV9idWZfbWFwX2F0dGFj
aG1lbnRfdW5sb2NrZWQodW1lbV9kbWFidWYtPmF0dGFjaCwNCj4gKwkJCQkJICAgICAgRE1BX0JJ
RElSRUNUSU9OQUwpOw0KPiAgCWlmIChJU19FUlIoc2d0KSkNCj4gIAkJcmV0dXJuIFBUUl9FUlIo
c2d0KTsNCj4gIA0KPiBAQCAtMTAyLDggKzEwMyw4IEBAIHZvaWQgaWJfdW1lbV9kbWFidWZfdW5t
YXBfcGFnZXMoc3RydWN0IGliX3VtZW1fZG1hYnVmICp1bWVtX2RtYWJ1ZikNCj4gIAkJdW1lbV9k
bWFidWYtPmxhc3Rfc2dfdHJpbSA9IDA7DQo+ICAJfQ0KPiAgDQo+IC0JZG1hX2J1Zl91bm1hcF9h
dHRhY2htZW50KHVtZW1fZG1hYnVmLT5hdHRhY2gsIHVtZW1fZG1hYnVmLT5zZ3QsDQo+IC0JCQkJ
IERNQV9CSURJUkVDVElPTkFMKTsNCj4gKwlkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnRfdW5sb2Nr
ZWQodW1lbV9kbWFidWYtPmF0dGFjaCwgdW1lbV9kbWFidWYtPnNndCwNCj4gKwkJCQkJICBETUFf
QklESVJFQ1RJT05BTCk7DQo+ICANCj4gIAl1bWVtX2RtYWJ1Zi0+c2d0ID0gTlVMTDsNCj4gIH0N
Cg0KSmFzb24gLyBMZW9uLA0KDQpDb3VsZCB5b3UgcGxlYXNlIGFjayB0aGlzIHBhdGNoPw0KDQot
LSANCkJlc3QgcmVnYXJkcywNCkRtaXRyeQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
