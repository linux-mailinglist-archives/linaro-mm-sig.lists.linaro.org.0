Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4951161FB9E
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Nov 2022 18:38:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CC583F5DA
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Nov 2022 17:38:13 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 7D3C23EBED
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Nov 2022 17:37:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=miwcwDXp;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Received: from [192.168.2.123] (109-252-117-140.nat.spd-mgts.ru [109.252.117.140])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AB1B366023A6;
	Mon,  7 Nov 2022 17:37:51 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1667842676;
	bh=UMRS4vM/GE6IwT0ij75XZK2yxYOoTzS0D0RuPVqVLQ0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=miwcwDXpS7Bbvd1kg8ufWW8EYMDu/fgcPle5PVDEc/B45ktlgqIx4KYYA7QJIH0/S
	 by6GLLPhco/tY89MPdmT/s8ECZUVpumdsyezUNadhVFrBlk2dKSnpRR4YYHs5ifRqx
	 kuVjLNaEObN6eE/lFu1N0kKKLb+Hg6OZXx6pYEFM8ctFWBT+AgibmceYq8kqFMCEG5
	 kowqpdeAKxf0CNu91SEfqgK2XcDJWq/xRLM5BkdsTv9wWssGJ9nsGOSCQkZma8qL+/
	 vHXhwraRJ7N/LdEZD26enrecVwg8djUWKheSt++aa2448mbVzh/odGXyBvPK2wEDIp
	 kG1p1Gc0TCNDw==
Message-ID: <daebe990-6032-15a1-175a-84e9e1ce2ca0@collabora.com>
Date: Mon, 7 Nov 2022 20:37:49 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Daniel Vetter <daniel@ffwll.ch>
References: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
 <20221017172229.42269-19-dmitry.osipenko@collabora.com>
 <CAKMK7uFFwTfNYT2BrubYvUMrH4fEmtF=yJshUck3-gKYLGqxCg@mail.gmail.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <CAKMK7uFFwTfNYT2BrubYvUMrH4fEmtF=yJshUck3-gKYLGqxCg@mail.gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ------
X-Rspamd-Queue-Id: 7D3C23EBED
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[linux.ie,redhat.com,chromium.org,gmail.com,collabora.com,fooishbar.org,linux.intel.com,kernel.org,suse.de,linaro.org,amd.com,samsung.com,intel.com,shipmail.org,qti.qualcomm.com,ziepe.ca,suse.com,epam.com,armlinux.org.uk,pengutronix.de,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,lists.linux-foundation.org];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:email];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_GT_50(0.00)[51];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: 74K2ROSTWPV5NAF3XG3KEMEJ2NYXX5OY
X-Message-ID-Hash: 74K2ROSTWPV5NAF3XG3KEMEJ2NYXX5OY
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Daniel Almeida <daniel.almeida@collabora.com>, Gert Wollny <gert.wollny@collabora.com>, Gustavo Padovan <gustavo.padovan@collabora.com>, Daniel Stone <daniel@fooishbar.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Alex Deucher <alexander.deucher@amd.com>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Qiang Yu <yuq82
 5@gmail.com>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Amol Maheshwari <amahesh@qti.qualcomm.com>, Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>, Juergen Gross <jgross@suse.com>, Stefano Stabellini <sstabellini@kernel.org>, Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>, Tomi Valkeinen <tomba@kernel.org>, Russell King <linux@armlinux.org.uk>, Christian Gmeiner <christian.gmeiner@gmail.com>, Ruhl Michael J <michael.j.ruhl@intel.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 18/21] dma-buf: Move dma_buf_mmap() to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/74K2ROSTWPV5NAF3XG3KEMEJ2NYXX5OY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvNy8yMiAyMDoyNSwgRGFuaWVsIFZldHRlciB3cm90ZToNCj4+IE1vdmUgZG1hX2J1Zl9t
bWFwKCkgZnVuY3Rpb24gdG8gdGhlIGR5bmFtaWMgbG9ja2luZyBzcGVjaWZpY2F0aW9uIGJ5DQo+
PiB0YWtpbmcgdGhlIHJlc2VydmF0aW9uIGxvY2suIE5laXRoZXIgb2YgdGhlIHRvZGF5J3MgZHJp
dmVycyB0YWtlIHRoZQ0KPj4gcmVzZXJ2YXRpb24gbG9jayB3aXRoaW4gdGhlIG1tYXAoKSBjYWxs
YmFjaywgaGVuY2UgaXQncyBzYWZlIHRvIGVuZm9yY2UNCj4+IHRoZSBsb2NraW5nLg0KPj4NCj4+
IEFja2VkLWJ5OiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KPj4gQWNr
ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+IFNp
Z25lZC1vZmYtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5j
b20+DQo+IEp1c3Qgbm90aWNlZCB0aGlzIHdoaWxlIHJlYWRpbmcgY29kZSAuLi4gdGhpcyBwYXRj
aCBzZWVtcyB0byBoYXZlDQo+IG1pc3NlZCBkbWFfYnVmX21tYXBfaW50ZXJuYWwoKT8NCj4gDQo+
IE1pZ2h0IGJlIGdvb2QgaWYgYXQgbGVhc3Qgc29tZSBkcml2ZXJzIGdhaW4gYSBkbWFfcmVzdl9h
c3NlcnRfaGVsZCBpbg0KPiB0aGF0IHBhdGggdG8gbWFrZSBzdXJlIHdlJ3JlIG5vdCBxdWl0ZSB0
aGlzIGJhZCwgdG9nZXRoZXIgd2l0aCBmaXhpbmcNCj4gdGhpcyBpc3N1ZS4NCg0KR29vZCBjYXRj
aCEgSSdsbCBwcmVwYXJlIHRoZSBwYXRjaGVzLg0KDQotLSANCkJlc3QgcmVnYXJkcywNCkRtaXRy
eQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
