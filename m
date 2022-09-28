Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1482B5EE57A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 21:22:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A47F3F48E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 19:22:37 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 92CDA3EF9B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Sep 2022 19:18:12 +0000 (UTC)
Received: from dimapc.. (unknown [109.252.125.248])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D559466022A2;
	Wed, 28 Sep 2022 20:18:08 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1664392691;
	bh=zM8eBwVfejy1KJ0qKfTB/C/KoLuYaM62O9H/cjFMEWw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SFpYtabgSQANS1fsFFpfFKKEOATjANu0v/d0k9Gleq2RPsSYl3ztTx2a+EzLiyeE6
	 LYKzk4nXKBD8gNWLWYH+VVisIYPq/zxWYo5Mc4KveZls/PqM5Zg8lnDivjZWhG0Wlu
	 iQHW3VOyhWKHequVTYm7oF6TNY26JaF6RcuM1inI1LFuubL+UBEC8BU5W5Ufl2eoOD
	 TCp6+XVnSiLmqrwUG+BlxM2kQWlrNaXxPPWaMnhtICJacWJwSF2RaApG34vfdD3XRW
	 b9QDKAtKUh7oK1R1P395EViJOyVOqViKsM7bbUq8ndY96QTBms0yukesFnQ0Hn5Z20
	 lpi5IfrgGdNIQ==
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
Date: Wed, 28 Sep 2022 22:15:54 +0300
Message-Id: <20220928191600.5874-16-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
References: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------
X-Rspamd-Queue-Id: 92CDA3EF9B
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
	URIBL_BLOCKED(0.00)[linaro.org:email,collabora.com:email,collabora.com:dkim,amd.com:email];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=SFpYtabg;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Message-ID-Hash: BSLCMCRUAIHWNFGMSIJGQAI7CM6434E6
X-Message-ID-Hash: BSLCMCRUAIHWNFGMSIJGQAI7CM6434E6
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 15/21] dma-buf: Move dma_buf_vmap() to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BSLCMCRUAIHWNFGMSIJGQAI7CM6434E6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TW92ZSBkbWFfYnVmX3ZtYXAvdnVubWFwKCkgZnVuY3Rpb25zIHRvIHRoZSBkeW5hbWljIGxvY2tp
bmcNCnNwZWNpZmljYXRpb24gYnkgYXNzZXJ0aW5nIHRoYXQgdGhlIHJlc2VydmF0aW9uIGxvY2sg
aXMgaGVsZC4NCg0KQWNrZWQtYnk6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5v
cmc+DQpBY2tlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pg0KU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFi
b3JhLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCA0ICsrKysNCiAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KaW5kZXggZjM0OTYxMzc5
MGE2Li4yMzY1NmYzMzQ3MzUgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5j
DQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQpAQCAtMTQ1MCw2ICsxNDUwLDggQEAg
aW50IGRtYV9idWZfdm1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgaW9zeXNfbWFw
ICptYXApDQogCWlmIChXQVJOX09OKCFkbWFidWYpKQ0KIAkJcmV0dXJuIC1FSU5WQUw7DQogDQor
CWRtYV9yZXN2X2Fzc2VydF9oZWxkKGRtYWJ1Zi0+cmVzdik7DQorDQogCWlmICghZG1hYnVmLT5v
cHMtPnZtYXApDQogCQlyZXR1cm4gLUVJTlZBTDsNCiANCkBAIC0xNTEzLDYgKzE1MTUsOCBAQCB2
b2lkIGRtYV9idWZfdnVubWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19t
YXAgKm1hcCkNCiAJaWYgKFdBUk5fT04oIWRtYWJ1ZikpDQogCQlyZXR1cm47DQogDQorCWRtYV9y
ZXN2X2Fzc2VydF9oZWxkKGRtYWJ1Zi0+cmVzdik7DQorDQogCUJVR19PTihpb3N5c19tYXBfaXNf
bnVsbCgmZG1hYnVmLT52bWFwX3B0cikpOw0KIAlCVUdfT04oZG1hYnVmLT52bWFwcGluZ19jb3Vu
dGVyID09IDApOw0KIAlCVUdfT04oIWlvc3lzX21hcF9pc19lcXVhbCgmZG1hYnVmLT52bWFwX3B0
ciwgbWFwKSk7DQotLSANCjIuMzcuMw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
