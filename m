Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7509660156F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Oct 2022 19:32:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 894A93F0D1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Oct 2022 17:32:14 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id E71AE3F499
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Oct 2022 17:25:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=RrsMn2jZ;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Received: from dimapc.. (109-252-119-114.nat.spd-mgts.ru [109.252.119.114])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B86BE6602398;
	Mon, 17 Oct 2022 18:25:31 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666027535;
	bh=LM8pyDnEAHvGCBO40COCQKj+eYv59T5WxHH0XEhWAPY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RrsMn2jZzh78/FlU7g/l7zbMgNSgljQnsY0x9j4ExW6/C5fWb4wQVm01SV2+oFQVu
	 KpY5O0Yo8lQkpTHg9IiWi7tcyju0D4NndypX8sD8YCxRC4TUyfBYtV0t66IOiFkxJT
	 0D1l+NstBYOiidbyq7r//GZmtttaNuM8gqIsWFvn0JZN4+b+Zw+PE4ItodZK8HVCjn
	 nG13scnkt7OQ3Ei4xYnNq+0eD6S14dwsaYNjlGv3/7HEgl6S0EWsMy1Wq6OucSxs3Y
	 8zS0lTvTMy01Xq8FqP4gvg9GxFR1luOirzPEGr6Ui2md3yYPCGXnjn20/fz4OYT7a+
	 danuNuiGCWgYQ==
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
Date: Mon, 17 Oct 2022 20:22:29 +0300
Message-Id: <20221017172229.42269-22-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
References: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -
X-Rspamd-Queue-Id: E71AE3F499
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
Message-ID-Hash: DLA5QSOYDLNM6EP4HLNCPXWR2BCMCW63
X-Message-ID-Hash: DLA5QSOYDLNM6EP4HLNCPXWR2BCMCW63
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 21/21] dma-buf: Remove obsoleted internal lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DLA5QSOYDLNM6EP4HLNCPXWR2BCMCW63/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIGludGVybmFsIGRtYS1idWYgbG9jayBpc24ndCBuZWVkZWQgYW55bW9yZSBiZWNhdXNlIHRo
ZSB1cGRhdGVkDQpsb2NraW5nIHNwZWNpZmljYXRpb24gY2xhaW1zIHRoYXQgZG1hLWJ1ZiByZXNl
cnZhdGlvbiBtdXN0IGJlIGxvY2tlZA0KYnkgaW1wb3J0ZXJzLCBhbmQgdGh1cywgdGhlIGludGVy
bmFsIGRhdGEgaXMgYWxyZWFkeSBwcm90ZWN0ZWQgYnkgdGhlDQpyZXNlcnZhdGlvbiBsb2NrLiBS
ZW1vdmUgdGhlIG9ic29sZXRlZCBpbnRlcm5hbCBsb2NrLg0KDQpBY2tlZC1ieTogU3VtaXQgU2Vt
d2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5p
ZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBl
bmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1
Zi9kbWEtYnVmLmMgfCAxNCArKysrLS0tLS0tLS0tLQ0KIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5o
ICAgfCAgOSAtLS0tLS0tLS0NCiAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMTkg
ZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KaW5kZXggZjFkOTY4ZTViYWM0Li43NjYzYzRlNzg0
YjYgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQorKysgYi9kcml2ZXJz
L2RtYS1idWYvZG1hLWJ1Zi5jDQpAQCAtNjU3LDcgKzY1Nyw2IEBAIHN0cnVjdCBkbWFfYnVmICpk
bWFfYnVmX2V4cG9ydChjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9leHBvcnRfaW5mbyAqZXhwX2luZm8p
DQogDQogCWRtYWJ1Zi0+ZmlsZSA9IGZpbGU7DQogDQotCW11dGV4X2luaXQoJmRtYWJ1Zi0+bG9j
ayk7DQogCUlOSVRfTElTVF9IRUFEKCZkbWFidWYtPmF0dGFjaG1lbnRzKTsNCiANCiAJbXV0ZXhf
bG9jaygmZGJfbGlzdC5sb2NrKTsNCkBAIC0xNTAzLDcgKzE1MDIsNyBAQCBFWFBPUlRfU1lNQk9M
X05TX0dQTChkbWFfYnVmX21tYXAsIERNQV9CVUYpOw0KIGludCBkbWFfYnVmX3ZtYXAoc3RydWN0
IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGlvc3lzX21hcCAqbWFwKQ0KIHsNCiAJc3RydWN0IGlv
c3lzX21hcCBwdHI7DQotCWludCByZXQgPSAwOw0KKwlpbnQgcmV0Ow0KIA0KIAlpb3N5c19tYXBf
Y2xlYXIobWFwKTsNCiANCkBAIC0xNTE1LDI4ICsxNTE0LDI1IEBAIGludCBkbWFfYnVmX3ZtYXAo
c3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGlvc3lzX21hcCAqbWFwKQ0KIAlpZiAoIWRt
YWJ1Zi0+b3BzLT52bWFwKQ0KIAkJcmV0dXJuIC1FSU5WQUw7DQogDQotCW11dGV4X2xvY2soJmRt
YWJ1Zi0+bG9jayk7DQogCWlmIChkbWFidWYtPnZtYXBwaW5nX2NvdW50ZXIpIHsNCiAJCWRtYWJ1
Zi0+dm1hcHBpbmdfY291bnRlcisrOw0KIAkJQlVHX09OKGlvc3lzX21hcF9pc19udWxsKCZkbWFi
dWYtPnZtYXBfcHRyKSk7DQogCQkqbWFwID0gZG1hYnVmLT52bWFwX3B0cjsNCi0JCWdvdG8gb3V0
X3VubG9jazsNCisJCXJldHVybiAwOw0KIAl9DQogDQogCUJVR19PTihpb3N5c19tYXBfaXNfc2V0
KCZkbWFidWYtPnZtYXBfcHRyKSk7DQogDQogCXJldCA9IGRtYWJ1Zi0+b3BzLT52bWFwKGRtYWJ1
ZiwgJnB0cik7DQogCWlmIChXQVJOX09OX09OQ0UocmV0KSkNCi0JCWdvdG8gb3V0X3VubG9jazsN
CisJCXJldHVybiByZXQ7DQogDQogCWRtYWJ1Zi0+dm1hcF9wdHIgPSBwdHI7DQogCWRtYWJ1Zi0+
dm1hcHBpbmdfY291bnRlciA9IDE7DQogDQogCSptYXAgPSBkbWFidWYtPnZtYXBfcHRyOw0KIA0K
LW91dF91bmxvY2s6DQotCW11dGV4X3VubG9jaygmZG1hYnVmLT5sb2NrKTsNCi0JcmV0dXJuIHJl
dDsNCisJcmV0dXJuIDA7DQogfQ0KIEVYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9idWZfdm1hcCwg
RE1BX0JVRik7DQogDQpAQCAtMTU4MywxMyArMTU3OSwxMSBAQCB2b2lkIGRtYV9idWZfdnVubWFw
KHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCiAJQlVHX09O
KGRtYWJ1Zi0+dm1hcHBpbmdfY291bnRlciA9PSAwKTsNCiAJQlVHX09OKCFpb3N5c19tYXBfaXNf
ZXF1YWwoJmRtYWJ1Zi0+dm1hcF9wdHIsIG1hcCkpOw0KIA0KLQltdXRleF9sb2NrKCZkbWFidWYt
PmxvY2spOw0KIAlpZiAoLS1kbWFidWYtPnZtYXBwaW5nX2NvdW50ZXIgPT0gMCkgew0KIAkJaWYg
KGRtYWJ1Zi0+b3BzLT52dW5tYXApDQogCQkJZG1hYnVmLT5vcHMtPnZ1bm1hcChkbWFidWYsIG1h
cCk7DQogCQlpb3N5c19tYXBfY2xlYXIoJmRtYWJ1Zi0+dm1hcF9wdHIpOw0KIAl9DQotCW11dGV4
X3VubG9jaygmZG1hYnVmLT5sb2NrKTsNCiB9DQogRVhQT1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1
Zl92dW5tYXAsIERNQV9CVUYpOw0KIA0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWJ1
Zi5oIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCmluZGV4IGYxMWI1YmJjMmYzNy4uNmZhOGQ0
ZTI5NzE5IDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCisrKyBiL2luY2x1
ZGUvbGludXgvZG1hLWJ1Zi5oDQpAQCAtMzI2LDE1ICszMjYsNiBAQCBzdHJ1Y3QgZG1hX2J1ZiB7
DQogCS8qKiBAb3BzOiBkbWFfYnVmX29wcyBhc3NvY2lhdGVkIHdpdGggdGhpcyBidWZmZXIgb2Jq
ZWN0LiAqLw0KIAljb25zdCBzdHJ1Y3QgZG1hX2J1Zl9vcHMgKm9wczsNCiANCi0JLyoqDQotCSAq
IEBsb2NrOg0KLQkgKg0KLQkgKiBVc2VkIGludGVybmFsbHkgdG8gc2VyaWFsaXplIGxpc3QgbWFu
aXB1bGF0aW9uLCBhdHRhY2gvZGV0YWNoIGFuZA0KLQkgKiB2bWFwL3VubWFwLiBOb3RlIHRoYXQg
aW4gbWFueSBjYXNlcyB0aGlzIGlzIHN1cGVyc2VlZGVkIGJ5DQotCSAqIGRtYV9yZXN2X2xvY2so
KSBvbiBAcmVzdi4NCi0JICovDQotCXN0cnVjdCBtdXRleCBsb2NrOw0KLQ0KIAkvKioNCiAJICog
QHZtYXBwaW5nX2NvdW50ZXI6DQogCSAqDQotLSANCjIuMzcuMw0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
