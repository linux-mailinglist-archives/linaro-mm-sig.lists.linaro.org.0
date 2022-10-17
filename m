Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C93B0601507
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Oct 2022 19:26:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DF98C40705
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Oct 2022 17:26:01 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 530AA3F4B7
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Oct 2022 17:24:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=G+h1tmyJ;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Received: from dimapc.. (109-252-119-114.nat.spd-mgts.ru [109.252.119.114])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5DDD4660238A;
	Mon, 17 Oct 2022 18:24:24 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666027467;
	bh=4gK+dAA52oPrrxMVr206U9w4dhN67vdQLljv+DOU7UE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=G+h1tmyJEfTpbQtx14VoyTBDJfqaPN2CeSUtryRgG+AsTOVPmxTE5Tgx1yJtxFV8k
	 JQg0/03Qi2BJA7BxufsBusQQzyeNhKsIgtlZZ1x3GvPBi2X2g3lsfG7SaxkY8VLr3b
	 Gb6zmggipQCyqvn7zVrRSQxUFHlQAj7AhutQdSRMWtr/E+oFHmY/rwUydQaBRHqE/H
	 846q2OsYltLRJTekII020DsjATGDKMiEfQDS4ZHDFe5NfzmcyZ933GPSBrQxm+Q1z4
	 IUcyGi2pui8opDcX3qwVaBfkWYvOzUh0lWrlg+Hnop9eCL5f+KysfGi3pfzVqwB2xL
	 NmDJiOlqxowuA==
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
Date: Mon, 17 Oct 2022 20:22:12 +0300
Message-Id: <20221017172229.42269-5-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
References: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -
X-Rspamd-Queue-Id: 530AA3F4B7
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com,lists.linaro.org,collabora.com,lists.linux-foundation.org];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	FREEMAIL_TO(0.00)[linux.ie,redhat.com,chromium.org,gmail.com,ffwll.ch,collabora.com,fooishbar.org,linux.intel.com,kernel.org,suse.de,linaro.org,amd.com,samsung.com,intel.com,shipmail.org,qti.qualcomm.com,ziepe.ca,suse.com,epam.com,armlinux.org.uk,pengutronix.de];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_GT_50(0.00)[51];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: ME33LVPNZAXQA3IF52QN6CVHYGRPJUC5
X-Message-ID-Hash: ME33LVPNZAXQA3IF52QN6CVHYGRPJUC5
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 04/21] drm/prime: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ME33LVPNZAXQA3IF52QN6CVHYGRPJUC5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UHJlcGFyZSBEUk0gcHJpbWUgY29yZSB0byB0aGUgY29tbW9uIGR5bmFtaWMgZG1hLWJ1ZiBsb2Nr
aW5nIGNvbnZlbnRpb24NCmJ5IHN0YXJ0aW5nIHRvIHVzZSB0aGUgdW5sb2NrZWQgdmVyc2lvbnMg
b2YgZG1hLWJ1ZiBBUEkgZnVuY3Rpb25zLg0KDQpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5p
ZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBl
bmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZ3B1L2Ry
bS9kcm1fcHJpbWUuYyB8IDYgKysrLS0tDQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJp
bWUuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYw0KaW5kZXggYTNmMTgwNjUzYjhiLi5l
ZjUwYzRlMmU1MDkgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMNCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYw0KQEAgLTkzNiw3ICs5MzYsNyBAQCBzdHJ1
Y3QgZHJtX2dlbV9vYmplY3QgKmRybV9nZW1fcHJpbWVfaW1wb3J0X2RldihzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LA0KIA0KIAlnZXRfZG1hX2J1ZihkbWFfYnVmKTsNCiANCi0Jc2d0ID0gZG1hX2J1
Zl9tYXBfYXR0YWNobWVudChhdHRhY2gsIERNQV9CSURJUkVDVElPTkFMKTsNCisJc2d0ID0gZG1h
X2J1Zl9tYXBfYXR0YWNobWVudF91bmxvY2tlZChhdHRhY2gsIERNQV9CSURJUkVDVElPTkFMKTsN
CiAJaWYgKElTX0VSUihzZ3QpKSB7DQogCQlyZXQgPSBQVFJfRVJSKHNndCk7DQogCQlnb3RvIGZh
aWxfZGV0YWNoOw0KQEAgLTk1NCw3ICs5NTQsNyBAQCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKmRy
bV9nZW1fcHJpbWVfaW1wb3J0X2RldihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LA0KIAlyZXR1cm4g
b2JqOw0KIA0KIGZhaWxfdW5tYXA6DQotCWRtYV9idWZfdW5tYXBfYXR0YWNobWVudChhdHRhY2gs
IHNndCwgRE1BX0JJRElSRUNUSU9OQUwpOw0KKwlkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnRfdW5s
b2NrZWQoYXR0YWNoLCBzZ3QsIERNQV9CSURJUkVDVElPTkFMKTsNCiBmYWlsX2RldGFjaDoNCiAJ
ZG1hX2J1Zl9kZXRhY2goZG1hX2J1ZiwgYXR0YWNoKTsNCiAJZG1hX2J1Zl9wdXQoZG1hX2J1Zik7
DQpAQCAtMTA1Miw3ICsxMDUyLDcgQEAgdm9pZCBkcm1fcHJpbWVfZ2VtX2Rlc3Ryb3koc3RydWN0
IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0cnVjdCBzZ190YWJsZSAqc2cpDQogDQogCWF0dGFjaCA9
IG9iai0+aW1wb3J0X2F0dGFjaDsNCiAJaWYgKHNnKQ0KLQkJZG1hX2J1Zl91bm1hcF9hdHRhY2ht
ZW50KGF0dGFjaCwgc2csIERNQV9CSURJUkVDVElPTkFMKTsNCisJCWRtYV9idWZfdW5tYXBfYXR0
YWNobWVudF91bmxvY2tlZChhdHRhY2gsIHNnLCBETUFfQklESVJFQ1RJT05BTCk7DQogCWRtYV9i
dWYgPSBhdHRhY2gtPmRtYWJ1ZjsNCiAJZG1hX2J1Zl9kZXRhY2goYXR0YWNoLT5kbWFidWYsIGF0
dGFjaCk7DQogCS8qIHJlbW92ZSB0aGUgcmVmZXJlbmNlICovDQotLSANCjIuMzcuMw0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
