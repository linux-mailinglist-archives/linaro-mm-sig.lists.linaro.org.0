Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C994460156B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Oct 2022 19:31:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D74A63EC47
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Oct 2022 17:31:52 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 01E2C3F499
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Oct 2022 17:25:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=MRyN3DnH;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Received: from dimapc.. (109-252-119-114.nat.spd-mgts.ru [109.252.119.114])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8833C66022A5;
	Mon, 17 Oct 2022 18:25:27 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666027531;
	bh=9SeFMAw05BZn16x/ElulgqR7Ax8eaKdCJvDDJbwzdLQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MRyN3DnHmkdnKohPolw7IsY/NW87cVjd1OwJT9q9lgfk3jgHYLdRVAM25MNMQ3uiS
	 zQGzL9eEf/7eG5S0ouWOeCyVr4ifeCc1BKS9z1/8bTaCsSxdRRaR4r668Og3J9ExF3
	 5fc+BJUurEXhBrGv3sVbyl4qrRwc6Af0KITZD2ghfa+sfdbrDWGuePC82uLJO044vo
	 1KNOUYP+zee8b1upYWB1Dt5YgimW2WjoShxGJdWlgMIuxPeuHYwm2rqsHklPhQayXW
	 f0TDrFCfNumcH3V8+l8/JQ1aAD+hB0aez6r/0CRnYS40aiqrkguDjr3K6rSWq/u7Yv
	 BzPv/BRqT+eBw==
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
Date: Mon, 17 Oct 2022 20:22:28 +0300
Message-Id: <20221017172229.42269-21-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
References: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -
X-Rspamd-Queue-Id: 01E2C3F499
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
Message-ID-Hash: 33TEE3RET2A3ZLXOWJZHEY3ETRUG3ZXO
X-Message-ID-Hash: 33TEE3RET2A3ZLXOWJZHEY3ETRUG3ZXO
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 20/21] media: videobuf2: Stop using internal dma-buf lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/33TEE3RET2A3ZLXOWJZHEY3ETRUG3ZXO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWxsIGRyaXZlcnMgdGhhdCB1c2UgZG1hLWJ1ZnMgaGF2ZSBiZWVuIG1vdmVkIHRvIHRoZSB1cGRh
dGVkIGxvY2tpbmcNCnNwZWNpZmljYXRpb24gYW5kIG5vdyBkbWEtYnVmIHJlc2VydmF0aW9uIGlz
IGd1YXJhbnRlZWQgdG8gYmUgbG9ja2VkDQpieSBpbXBvcnRlcnMgZHVyaW5nIHRoZSBtYXBwaW5n
IG9wZXJhdGlvbnMuIFRoZXJlIGlzIG5vIG5lZWQgdG8gdGFrZQ0KdGhlIGludGVybmFsIGRtYS1i
dWYgbG9jayBhbnltb3JlLiBSZW1vdmUgbG9ja2luZyBmcm9tIHRoZSB2aWRlb2J1ZjINCm1lbW9y
eSBhbGxvY2F0b3JzLg0KDQpBY2tlZC1ieTogVG9tYXN6IEZpZ2EgPHRmaWdhQGNocm9taXVtLm9y
Zz4NCkFja2VkLWJ5OiBIYW5zIFZlcmt1aWwgPGh2ZXJrdWlsLWNpc2NvQHhzNGFsbC5ubD4NCkFj
a2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpTaWdu
ZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVua28gPGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29t
Pg0KLS0tDQogZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29u
dGlnLmMgfCAxMSArLS0tLS0tLS0tLQ0KIGRyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92
aWRlb2J1ZjItZG1hLXNnLmMgICAgIHwgMTEgKy0tLS0tLS0tLS0NCiBkcml2ZXJzL21lZGlhL2Nv
bW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLXZtYWxsb2MuYyAgICB8IDExICstLS0tLS0tLS0tDQog
MyBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMwIGRlbGV0aW9ucygtKQ0KDQpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29u
dGlnLmMgYi9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250
aWcuYw0KaW5kZXggNzlmNGQ4MzAxZmJiLi41NTViZDQwZmE0NzIgMTAwNjQ0DQotLS0gYS9kcml2
ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYw0KKysrIGIv
ZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmMNCkBA
IC0zODIsMTggKzM4MiwxMiBAQCBzdGF0aWMgc3RydWN0IHNnX3RhYmxlICp2YjJfZGNfZG1hYnVm
X29wc19tYXAoDQogCXN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmRiX2F0dGFjaCwgZW51bSBk
bWFfZGF0YV9kaXJlY3Rpb24gZG1hX2RpcikNCiB7DQogCXN0cnVjdCB2YjJfZGNfYXR0YWNobWVu
dCAqYXR0YWNoID0gZGJfYXR0YWNoLT5wcml2Ow0KLQkvKiBzdGVhbGluZyBkbWFidWYgbXV0ZXgg
dG8gc2VyaWFsaXplIG1hcC91bm1hcCBvcGVyYXRpb25zICovDQotCXN0cnVjdCBtdXRleCAqbG9j
ayA9ICZkYl9hdHRhY2gtPmRtYWJ1Zi0+bG9jazsNCiAJc3RydWN0IHNnX3RhYmxlICpzZ3Q7DQog
DQotCW11dGV4X2xvY2sobG9jayk7DQotDQogCXNndCA9ICZhdHRhY2gtPnNndDsNCiAJLyogcmV0
dXJuIHByZXZpb3VzbHkgbWFwcGVkIHNnIHRhYmxlICovDQotCWlmIChhdHRhY2gtPmRtYV9kaXIg
PT0gZG1hX2Rpcikgew0KLQkJbXV0ZXhfdW5sb2NrKGxvY2spOw0KKwlpZiAoYXR0YWNoLT5kbWFf
ZGlyID09IGRtYV9kaXIpDQogCQlyZXR1cm4gc2d0Ow0KLQl9DQogDQogCS8qIHJlbGVhc2UgYW55
IHByZXZpb3VzIGNhY2hlICovDQogCWlmIChhdHRhY2gtPmRtYV9kaXIgIT0gRE1BX05PTkUpIHsN
CkBAIC00MDksMTQgKzQwMywxMSBAQCBzdGF0aWMgc3RydWN0IHNnX3RhYmxlICp2YjJfZGNfZG1h
YnVmX29wc19tYXAoDQogCWlmIChkbWFfbWFwX3NndGFibGUoZGJfYXR0YWNoLT5kZXYsIHNndCwg
ZG1hX2RpciwNCiAJCQkgICAgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQykpIHsNCiAJCXByX2Vycigi
ZmFpbGVkIHRvIG1hcCBzY2F0dGVybGlzdFxuIik7DQotCQltdXRleF91bmxvY2sobG9jayk7DQog
CQlyZXR1cm4gRVJSX1BUUigtRUlPKTsNCiAJfQ0KIA0KIAlhdHRhY2gtPmRtYV9kaXIgPSBkbWFf
ZGlyOw0KIA0KLQltdXRleF91bmxvY2sobG9jayk7DQotDQogCXJldHVybiBzZ3Q7DQogfQ0KIA0K
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1h
LXNnLmMgYi9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1zZy5j
DQppbmRleCAzNmVjZGVhOGQ3MDcuLjM2OTgxYTViNWM1MyAxMDA2NDQNCi0tLSBhL2RyaXZlcnMv
bWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLXNnLmMNCisrKyBiL2RyaXZlcnMv
bWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLXNnLmMNCkBAIC00MjQsMTggKzQy
NCwxMiBAQCBzdGF0aWMgc3RydWN0IHNnX3RhYmxlICp2YjJfZG1hX3NnX2RtYWJ1Zl9vcHNfbWFw
KA0KIAlzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICpkYl9hdHRhY2gsIGVudW0gZG1hX2RhdGFf
ZGlyZWN0aW9uIGRtYV9kaXIpDQogew0KIAlzdHJ1Y3QgdmIyX2RtYV9zZ19hdHRhY2htZW50ICph
dHRhY2ggPSBkYl9hdHRhY2gtPnByaXY7DQotCS8qIHN0ZWFsaW5nIGRtYWJ1ZiBtdXRleCB0byBz
ZXJpYWxpemUgbWFwL3VubWFwIG9wZXJhdGlvbnMgKi8NCi0Jc3RydWN0IG11dGV4ICpsb2NrID0g
JmRiX2F0dGFjaC0+ZG1hYnVmLT5sb2NrOw0KIAlzdHJ1Y3Qgc2dfdGFibGUgKnNndDsNCiANCi0J
bXV0ZXhfbG9jayhsb2NrKTsNCi0NCiAJc2d0ID0gJmF0dGFjaC0+c2d0Ow0KIAkvKiByZXR1cm4g
cHJldmlvdXNseSBtYXBwZWQgc2cgdGFibGUgKi8NCi0JaWYgKGF0dGFjaC0+ZG1hX2RpciA9PSBk
bWFfZGlyKSB7DQotCQltdXRleF91bmxvY2sobG9jayk7DQorCWlmIChhdHRhY2gtPmRtYV9kaXIg
PT0gZG1hX2RpcikNCiAJCXJldHVybiBzZ3Q7DQotCX0NCiANCiAJLyogcmVsZWFzZSBhbnkgcHJl
dmlvdXMgY2FjaGUgKi8NCiAJaWYgKGF0dGFjaC0+ZG1hX2RpciAhPSBETUFfTk9ORSkgew0KQEAg
LTQ0NiwxNCArNDQwLDExIEBAIHN0YXRpYyBzdHJ1Y3Qgc2dfdGFibGUgKnZiMl9kbWFfc2dfZG1h
YnVmX29wc19tYXAoDQogCS8qIG1hcHBpbmcgdG8gdGhlIGNsaWVudCB3aXRoIG5ldyBkaXJlY3Rp
b24gKi8NCiAJaWYgKGRtYV9tYXBfc2d0YWJsZShkYl9hdHRhY2gtPmRldiwgc2d0LCBkbWFfZGly
LCAwKSkgew0KIAkJcHJfZXJyKCJmYWlsZWQgdG8gbWFwIHNjYXR0ZXJsaXN0XG4iKTsNCi0JCW11
dGV4X3VubG9jayhsb2NrKTsNCiAJCXJldHVybiBFUlJfUFRSKC1FSU8pOw0KIAl9DQogDQogCWF0
dGFjaC0+ZG1hX2RpciA9IGRtYV9kaXI7DQogDQotCW11dGV4X3VubG9jayhsb2NrKTsNCi0NCiAJ
cmV0dXJuIHNndDsNCiB9DQogDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9jb21tb24vdmlk
ZW9idWYyL3ZpZGVvYnVmMi12bWFsbG9jLmMgYi9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1
ZjIvdmlkZW9idWYyLXZtYWxsb2MuYw0KaW5kZXggNzgzMWJmNTQ1ODc0Li40MWRiNzA3ZTQzYTQg
MTAwNjQ0DQotLS0gYS9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLXZt
YWxsb2MuYw0KKysrIGIvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi12
bWFsbG9jLmMNCkBAIC0yNjcsMTggKzI2NywxMiBAQCBzdGF0aWMgc3RydWN0IHNnX3RhYmxlICp2
YjJfdm1hbGxvY19kbWFidWZfb3BzX21hcCgNCiAJc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAq
ZGJfYXR0YWNoLCBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkbWFfZGlyKQ0KIHsNCiAJc3RydWN0
IHZiMl92bWFsbG9jX2F0dGFjaG1lbnQgKmF0dGFjaCA9IGRiX2F0dGFjaC0+cHJpdjsNCi0JLyog
c3RlYWxpbmcgZG1hYnVmIG11dGV4IHRvIHNlcmlhbGl6ZSBtYXAvdW5tYXAgb3BlcmF0aW9ucyAq
Lw0KLQlzdHJ1Y3QgbXV0ZXggKmxvY2sgPSAmZGJfYXR0YWNoLT5kbWFidWYtPmxvY2s7DQogCXN0
cnVjdCBzZ190YWJsZSAqc2d0Ow0KIA0KLQltdXRleF9sb2NrKGxvY2spOw0KLQ0KIAlzZ3QgPSAm
YXR0YWNoLT5zZ3Q7DQogCS8qIHJldHVybiBwcmV2aW91c2x5IG1hcHBlZCBzZyB0YWJsZSAqLw0K
LQlpZiAoYXR0YWNoLT5kbWFfZGlyID09IGRtYV9kaXIpIHsNCi0JCW11dGV4X3VubG9jayhsb2Nr
KTsNCisJaWYgKGF0dGFjaC0+ZG1hX2RpciA9PSBkbWFfZGlyKQ0KIAkJcmV0dXJuIHNndDsNCi0J
fQ0KIA0KIAkvKiByZWxlYXNlIGFueSBwcmV2aW91cyBjYWNoZSAqLw0KIAlpZiAoYXR0YWNoLT5k
bWFfZGlyICE9IERNQV9OT05FKSB7DQpAQCAtMjg5LDE0ICsyODMsMTEgQEAgc3RhdGljIHN0cnVj
dCBzZ190YWJsZSAqdmIyX3ZtYWxsb2NfZG1hYnVmX29wc19tYXAoDQogCS8qIG1hcHBpbmcgdG8g
dGhlIGNsaWVudCB3aXRoIG5ldyBkaXJlY3Rpb24gKi8NCiAJaWYgKGRtYV9tYXBfc2d0YWJsZShk
Yl9hdHRhY2gtPmRldiwgc2d0LCBkbWFfZGlyLCAwKSkgew0KIAkJcHJfZXJyKCJmYWlsZWQgdG8g
bWFwIHNjYXR0ZXJsaXN0XG4iKTsNCi0JCW11dGV4X3VubG9jayhsb2NrKTsNCiAJCXJldHVybiBF
UlJfUFRSKC1FSU8pOw0KIAl9DQogDQogCWF0dGFjaC0+ZG1hX2RpciA9IGRtYV9kaXI7DQogDQot
CW11dGV4X3VubG9jayhsb2NrKTsNCi0NCiAJcmV0dXJuIHNndDsNCiB9DQogDQotLSANCjIuMzcu
Mw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
