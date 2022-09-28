Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C72AD5EE576
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 21:21:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DE1733F511
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 19:21:19 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id B9FF63EF9B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Sep 2022 19:17:59 +0000 (UTC)
Received: from dimapc.. (unknown [109.252.125.248])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id F35BD66022B6;
	Wed, 28 Sep 2022 20:17:55 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1664392679;
	bh=f3G12g+5czfdXru1FeeGI7Ybfs2QOu1D1lZN+8ABGmM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PtCLdIMfXvqh6cEs8jT8c5CUa4kud+N1s6CpLl8wJwPcqYx63cK46fxVUNSmpB5dW
	 YKBxz53PUOaj5NZTocXMbYgc7BSDkST7AUOg6x9l1RIXwmPsnVn7kzx4TYXHgK27TP
	 bKMXgdJEQfUpZjabDQ1jWXu/u+sUluGsl9CSveFIwr0e16HCNI/xW9v/SE9ObGmklU
	 qgqufjJFDhSWVkok2eQqRvdufhpvSbN+Ff29+ikbqk8pGu6zqBsf4Gy5PmQLj5vq20
	 EivXDNIeK0GpMV/1+gAhSdaPlgZc8AI08eGnsuPu4dLQhxxk2hdVS8zWhB89DgyGbN
	 vEEHMqXY8WSeA==
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: David Airlie <airlied@linux.ie>,
	Gerd Hoffmann <kraxel@redhat.com>,
	Gurchetan Singh <gurchetansingh@chromium.org>,
	Chia-I Wu <olvaffe@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Gert Wollny <gert.wollny@collabora.com>,
	Gustavo Padovan <gustavo.padovan@collabora.com>,
	Daniel Stone <daniel@fooishbar.org>,
	Tomeu Vizoso <tomeu.vizoso@collabora.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Clark <robdclark@gmail.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"Pan, Xinhui" <Xinhui.Pan@amd.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Tomasz Figa <tfiga@chromium.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Alex Deucher <alexander.deucher@amd.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
	=?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas_os@shipmail.org>,
	Qiang Yu <yuq825@gmail.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Amol Maheshwari <amahesh@qti.qualcomm.com>,
	Jason Gunthorpe <jgg@ziepe.ca>,
	Leon Romanovsky <leon@kernel.org>,
	Juergen Gross <jgross@suse.com>,
	Stefano Stabellini <sstabellini@kernel.org>,
	Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
	Tomi Valkeinen <tomba@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Lucas Stach <l.stach@pengutronix.de>,
	Christian Gmeiner <christian.gmeiner@gmail.com>,
	Ruhl Michael J <michael.j.ruhl@intel.com>
Date: Wed, 28 Sep 2022 22:15:50 +0300
Message-Id: <20220928191600.5874-12-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
References: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------
X-Rspamd-Queue-Id: B9FF63EF9B
X-Spamd-Result: default: False [-7.00 / 15.00];
	DWL_DNSWL_HI(-3.50)[collabora.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[46.235.227.172:from,109.252.125.248:received];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172:c];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com,lists.linaro.org,collabora.com,lists.linux-foundation.org];
	FREEMAIL_TO(0.00)[linux.ie,redhat.com,chromium.org,gmail.com,ffwll.ch,collabora.com,fooishbar.org,linux.intel.com,kernel.org,suse.de,linaro.org,amd.com,samsung.com,intel.com,shipmail.org,qti.qualcomm.com,ziepe.ca,suse.com,epam.com,armlinux.org.uk,pengutronix.de];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[collabora.com:+];
	RCPT_COUNT_GT_50(0.00)[51];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:email,linaro.org:email,collabora.com:email,collabora.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=PtCLdIMf;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Message-ID-Hash: JZNCRTM6WWOUQ44KUDPYXZPP63GBP2P7
X-Message-ID-Hash: JZNCRTM6WWOUQ44KUDPYXZPP63GBP2P7
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 11/21] misc: fastrpc: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JZNCRTM6WWOUQ44KUDPYXZPP63GBP2P7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UHJlcGFyZSBmYXN0cnBjIHRvIHRoZSBjb21tb24gZHluYW1pYyBkbWEtYnVmIGxvY2tpbmcgY29u
dmVudGlvbiBieQ0Kc3RhcnRpbmcgdG8gdXNlIHRoZSB1bmxvY2tlZCB2ZXJzaW9ucyBvZiBkbWEt
YnVmIEFQSSBmdW5jdGlvbnMuDQoNCkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+DQpBY2tlZC1ieTogU3Jpbml2YXMgS2FuZGFnYXRsYSA8c3Jpbml2
YXMua2FuZGFnYXRsYUBsaW5hcm8ub3JnPg0KU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtv
IDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4NCi0tLQ0KIGRyaXZlcnMvbWlzYy9mYXN0
cnBjLmMgfCA2ICsrKy0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVs
ZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL21pc2MvZmFzdHJwYy5jIGIvZHJpdmVy
cy9taXNjL2Zhc3RycGMuYw0KaW5kZXggN2ZmMGI2M2MyNWUzLi4xYWQ1ODA4NjU1MjUgMTAwNjQ0
DQotLS0gYS9kcml2ZXJzL21pc2MvZmFzdHJwYy5jDQorKysgYi9kcml2ZXJzL21pc2MvZmFzdHJw
Yy5jDQpAQCAtMzEwLDggKzMxMCw4IEBAIHN0YXRpYyB2b2lkIGZhc3RycGNfZnJlZV9tYXAoc3Ry
dWN0IGtyZWYgKnJlZikNCiAJCQkJcmV0dXJuOw0KIAkJCX0NCiAJCX0NCi0JCWRtYV9idWZfdW5t
YXBfYXR0YWNobWVudChtYXAtPmF0dGFjaCwgbWFwLT50YWJsZSwNCi0JCQkJCSBETUFfQklESVJF
Q1RJT05BTCk7DQorCQlkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnRfdW5sb2NrZWQobWFwLT5hdHRh
Y2gsIG1hcC0+dGFibGUsDQorCQkJCQkJICBETUFfQklESVJFQ1RJT05BTCk7DQogCQlkbWFfYnVm
X2RldGFjaChtYXAtPmJ1ZiwgbWFwLT5hdHRhY2gpOw0KIAkJZG1hX2J1Zl9wdXQobWFwLT5idWYp
Ow0KIAl9DQpAQCAtNzI2LDcgKzcyNiw3IEBAIHN0YXRpYyBpbnQgZmFzdHJwY19tYXBfY3JlYXRl
KHN0cnVjdCBmYXN0cnBjX3VzZXIgKmZsLCBpbnQgZmQsDQogCQlnb3RvIGF0dGFjaF9lcnI7DQog
CX0NCiANCi0JbWFwLT50YWJsZSA9IGRtYV9idWZfbWFwX2F0dGFjaG1lbnQobWFwLT5hdHRhY2gs
IERNQV9CSURJUkVDVElPTkFMKTsNCisJbWFwLT50YWJsZSA9IGRtYV9idWZfbWFwX2F0dGFjaG1l
bnRfdW5sb2NrZWQobWFwLT5hdHRhY2gsIERNQV9CSURJUkVDVElPTkFMKTsNCiAJaWYgKElTX0VS
UihtYXAtPnRhYmxlKSkgew0KIAkJZXJyID0gUFRSX0VSUihtYXAtPnRhYmxlKTsNCiAJCWdvdG8g
bWFwX2VycjsNCi0tIA0KMi4zNy4zDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
