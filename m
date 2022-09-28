Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 195925EE4F1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 21:17:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E4C053F58B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 19:17:43 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 4BDA63EBA9
	for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Sep 2022 19:17:24 +0000 (UTC)
Received: from dimapc.. (unknown [109.252.125.248])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 712166602299;
	Wed, 28 Sep 2022 20:17:19 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1664392643;
	bh=x+LbBJS2tZ45QIcAQeiD7PzTYeniLrpyZp+rSQmzi+c=;
	h=From:To:Cc:Subject:Date:From;
	b=RSqzZajkssm+OLwq2hEOT9R+CoxC5d7VCe/egP4Jdq/t/VaUmLs/xmnYW4qa3bCyf
	 Lts00mED/19NdGIZxKgA3QWjhiuZGSk7HELSArnBpppX6SDSk7GTgy58l+WGcxl/Xk
	 h8LbfZVlXQ17FnK62OSxdSgUr9y2p7w4ia79I5Nz2U8eK+chDPr0QDGrPIS4yXZxjY
	 1/nMp4u1yDJ3CZzkmYZTvytrkst8Sk9WmWl9vvH5k62w3ghR1uXMaZAcB45PP6b/2J
	 Ne99b892td1qpK/qXiA8rRXeeBcxhm8m/j7hRA7/vTRICN4X/GmW9jaZwe4UTwJxyp
	 HOn+OW3fvd+uA==
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
Date: Wed, 28 Sep 2022 22:15:39 +0300
Message-Id: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------
X-Rspamd-Queue-Id: 4BDA63EBA9
X-Spamd-Result: default: False [-7.00 / 15.00];
	DWL_DNSWL_HI(-3.50)[collabora.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[109.252.125.248:received,46.235.227.172:from];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com,lists.linaro.org,collabora.com,lists.linux-foundation.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCPT_COUNT_GT_50(0.00)[51];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[linux.ie,redhat.com,chromium.org,gmail.com,ffwll.ch,collabora.com,fooishbar.org,linux.intel.com,kernel.org,suse.de,linaro.org,amd.com,samsung.com,intel.com,shipmail.org,qti.qualcomm.com,ziepe.ca,suse.com,epam.com,armlinux.org.uk,pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=RSqzZajk;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Message-ID-Hash: LV2PYCCJE3F2P22FXIQ327YORDQXT5RH
X-Message-ID-Hash: LV2PYCCJE3F2P22FXIQ327YORDQXT5RH
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 00/21] Move all drivers to a common dma-buf locking convention
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LV2PYCCJE3F2P22FXIQ327YORDQXT5RH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sDQoNClRoaXMgc2VyaWVzIG1vdmVzIGFsbCBkcml2ZXJzIHRvIGEgZHluYW1pYyBkbWEt
YnVmIGxvY2tpbmcgc3BlY2lmaWNhdGlvbi4NCj5Gcm9tIG5vdyBvbiBhbGwgZG1hLWJ1ZiBpbXBv
cnRlcnMgYXJlIG1hZGUgcmVzcG9uc2libGUgZm9yIGhvbGRpbmcNCmRtYS1idWYncyByZXNlcnZh
dGlvbiBsb2NrIGFyb3VuZCBhbGwgb3BlcmF0aW9ucyBwZXJmb3JtZWQgb3ZlciBkbWEtYnVmcw0K
aW4gYWNjb3JkYW5jZSB0byB0aGUgbG9ja2luZyBzcGVjaWZpY2F0aW9uLiBUaGlzIGFsbG93cyB1
cyB0byB1dGlsaXplDQpyZXNlcnZhdGlvbiBsb2NrIG1vcmUgYnJvYWRseSBhcm91bmQga2VybmVs
IHdpdGhvdXQgZmVhcmluZyBvZiBhIHBvdGVudGlhbA0KZGVhZGxvY2tzLg0KDQpUaGlzIHBhdGNo
c2V0IHBhc3NlcyBhbGwgaTkxNSBzZWxmdGVzdHMuIEl0IHdhcyBhbHNvIHRlc3RlZCB1c2luZyBW
aXJ0SU8sDQpQYW5mcm9zdCwgTGltYSwgVGVncmEsIHVkbWFidWYsIEFNREdQVSBhbmQgTm91dmVh
dSBkcml2ZXJzLiBJIHRlc3RlZCBjYXNlcw0Kb2YgZGlzcGxheStHUFUsIGRpc3BsYXkrVjRMIGFu
ZCBHUFUrVjRMIGRtYS1idWYgc2hhcmluZyAod2hlcmUgYXBwcm9wcmlhdGUpLA0Kd2hpY2ggY292
ZXJzIG1ham9yaXR5IG9mIGtlcm5lbCBkcml2ZXJzIHNpbmNlIHJlc3Qgb2YgdGhlIGRyaXZlcnMg
c2hhcmUNCnNhbWUgb3Igc2ltaWxhciBjb2RlIHBhdGhzLg0KDQpDaGFuZ2Vsb2c6DQoNCnY2OiAt
IEFkZGVkIHItYiBmcm9tIE1pY2hhZWwgUnVobCB0byB0aGUgaTkxNSBwYXRjaC4NCg0KICAgIC0g
QWRkZWQgYWNrcyBmcm9tIFN1bWl0IFNlbXdhbCBhbmQgdXBkYXRlZCBjb21taXQgbWVzc2FnZSBv
ZiB0aGUNCiAgICAgICJNb3ZlIGRtYV9idWZfdm1hcCgpIHRvIGR5bmFtaWMgbG9ja2luZyBzcGVj
aWZpY2F0aW9uIiBwYXRjaCBsaWtlDQogICAgICB3YXMgc3VnZ2VzdGVkIGJ5IFN1bWl0Lg0KDQog
ICAgLSBBZGRlZCAiIWRtYWJ1ZiIgY2hlY2sgdG8gZG1hX2J1Zl92bWFwX3VubG9ja2VkKCkgdG8g
bWF0Y2ggdGhlIGxvY2tlZA0KICAgICAgdmFyaWFudCBvZiB0aGUgZnVuY3Rpb24sIGZvciBjb25z
aXN0ZW5jeS4NCg0KdjU6IC0gQWRkZWQgYWNrcyBhbmQgci1icyB0aGF0IHdlcmUgZ2l2ZW4gdG8g
djQuDQoNCiAgICAtIENoYW5nZWQgaTkxNSBwcmVwYXJhdGlvbiBwYXRjaCBsaWtlIHdhcyBzdWdn
ZXN0ZWQgYnkgTWljaGFlbCBSdWhsLg0KICAgICAgVGhlIHNjb3BlIG9mIHJlc2VydmF0aW9uIGxv
Y2tpbmcgaXMgc21hbGxlciBub3cuDQoNCnY0OiAtIEFkZGVkIGRtYV9idWZfbW1hcCgpIHRvIHRo
ZSAibG9ja2luZyBjb252ZW50aW9uIiBkb2N1bWVudGF0aW9uLA0KICAgICAgd2hpY2ggd2FzIG1p
c3NlZCBieSBhY2NpZGVudCBpbiB2My4NCg0KICAgIC0gQWRkZWQgYWNrcyBmcm9tIENocmlzdGlh
biBLw7ZuaWcsIFRvbWFzeiBGaWdhIGFuZCBIYW5zIFZlcmt1aWwgdGhhdA0KICAgICAgdGhleSBn
YXZlIHRvIGNvdXBsZSB2MyBwYXRjaGVzLg0KDQogICAgLSBEcm9wcGVkIHRoZSAiX3VubG9ja2Vk
IiBwb3N0Zml4IGZyb20gZnVuY3Rpb24gbmFtZXMgdGhhdCBkb24ndCBoYXZlDQogICAgICB0aGUg
bG9ja2VkIHZhcmlhbnQsIGFzIHdhcyByZXF1ZXN0ZWQgYnkgQ2hyaXN0aWFuIEvDtm5pZy4NCg0K
ICAgIC0gRmFjdG9yZWQgb3V0IHRoZSBwZXItZHJpdmVyIHByZXBhcmF0aW9ucyBpbnRvIHNlcGFy
YXRlIHBhdGNoZXMNCiAgICAgIHRvIGVhc2UgcmV2aWV3aW5nIG9mIHRoZSBjaGFuZ2VzLCB3aGlj
aCBpcyBub3cgZG9hYmxlIHdpdGhvdXQgdGhlDQogICAgICBnbG9iYWwgZG1hLWJ1ZiBmdW5jdGlv
bnMgcmVuYW1pbmcuDQoNCiAgICAtIEZhY3RvcmVkIG91dCB0aGUgZHluYW1pYyBsb2NraW5nIGNv
bnZlbnRpb24gZW5mb3JjZW1lbnRzIGludG8gc2VwYXJhdGUNCiAgICAgIHBhdGNoZXMgd2hpY2gg
YWRkIHRoZSBmaW5hbCBkbWFfcmVzdl9hc3NlcnRfaGVsZChkbWFidWYtPnJlc3YpIHRvIHRoZQ0K
ICAgICAgZG1hLWJ1ZiBBUEkgZnVuY3Rpb25zLg0KDQp2MzogLSBGYWN0b3JlZCBvdXQgZG1hX2J1
Zl9tbWFwX3VubG9ja2VkKCkgYW5kIGF0dGFjaG1lbnQgZnVuY3Rpb25zDQogICAgICBpbnRvIGFz
ZXBhcmF0ZSBwYXRjaGVzLCBsaWtlIHdhcyBzdWdnZXN0ZWQgYnkgQ2hyaXN0aWFuIEvDtm5pZy4N
Cg0KICAgIC0gQ29ycmVjdGVkIGFuZCBmYWN0b3JlZCBvdXQgZG1hLWJ1ZiBsb2NraW5nIGRvY3Vt
ZW50YXRpb24gaW50bw0KICAgICAgYSBzZXBhcmF0ZSBwYXRjaCwgbGlrZSB3YXMgc3VnZ2VzdGVk
IGJ5IENocmlzdGlhbiBLw7ZuaWcuDQoNCiAgICAtIEludGVsIGRyaXZlciBkcm9wcGVkIHRoZSBy
ZXNlcnZhdGlvbiBsb2NraW5nIGZld3MgZGF5cyBhZ28gZnJvbQ0KICAgICAgaXRzIEJPLXJlbGVh
c2UgY29kZSBwYXRoLCBidXQgd2UgbmVlZCB0aGF0IGxvY2tpbmcgZm9yIHRoZSBpbXBvcnRlZA0K
ICAgICAgR0VNcyBiZWNhdXNlIGluIHRoZSBlbmQgdGhhdCBjb2RlIHBhdGggdW5tYXBzIHRoZSBp
bXBvcnRlZCBHRU0uDQogICAgICBTbyBJIGFkZGVkIGJhY2sgdGhlIGxvY2tpbmcgbmVlZGVkIGJ5
IHRoZSBpbXBvcnRlZCBHRU1zLCB1cGRhdGluZw0KICAgICAgdGhlICJkbWEtYnVmIGF0dGFjaG1l
bnQgbG9ja2luZyBzcGVjaWZpY2F0aW9uIiBwYXRjaCBhcHByb3ByaWF0ZWx5Lg0KDQogICAgLSBU
ZXN0ZWQgTm91dmVhdStJbnRlbCBkbWEtYnVmIGltcG9ydC9leHBvcnQgY29tYm8uDQoNCiAgICAt
IFRlc3RlZCB1ZG1hYnVmIGltcG9ydCB0byBpOTE1L05vdXZlYXUvQU1ER1BVLg0KDQogICAgLSBG
aXhlZCBmZXcgcGxhY2VzIGluIEV0bmF2aXYsIFBhbmZyb3N0IGFuZCBMaW1hIGRyaXZlcnMgdGhh
dCBJIG1pc3NlZA0KICAgICAgdG8gc3dpdGNoIHRvIGxvY2tlZCBkbWEtYnVmIHZtYXBwaW5nIGlu
IHRoZSBkcm0vZ2VtOiBUYWtlIHJlc2VydmF0aW9uDQogICAgICBsb2NrIGZvciB2bWFwL3Z1bm1h
cCBvcGVyYXRpb25zIiBwYXRjaC4gSW4gYSByZXN1bHQgaW52YWxpZGF0ZWQgdGhlDQogICAgICBD
aHJpc3RpYW4ncyByLWIgdGhhdCBoZSBnYXZlIHRvIHYyLg0KDQogICAgLSBBZGRlZCBsb2NrZWQg
ZG1hLWJ1ZiB2bWFwL3Z1bm1hcCBmdW5jdGlvbnMgdGhhdCBhcmUgbmVlZGVkIGZvciBmaXhpbmcN
CiAgICAgIHZtYXBwcGluZyBvZiBFdG5hdml2LCBQYW5mcm9zdCBhbmQgTGltYSBkcml2ZXJzIG1l
bnRpb25lZCBhYm92ZS4NCiAgICAgIEkgYWN0dWFsbHkgaGFkIHRoaXMgY2hhbmdlIHN0YXNoZWQg
Zm9yIHRoZSBkcm0tc2htZW0gc2hyaW5rZXIgcGF0Y2hzZXQsDQogICAgICBidXQgdGhlbiByZWFs
aXplZCB0aGF0IGl0J3MgYWxyZWFkeSBuZWVkZWQgYnkgdGhlIGRtYS1idWYgcGF0Y2hlcy4NCiAg
ICAgIEFsc28gaW1wcm92ZWQgbXkgdGVzdHMgdG8gYmV0dGVyIGNvdmVyIHRoZXNlIGNvZGUgcGF0
aHMuDQoNCnYyOiAtIENoYW5nZWQgbG9ja2luZyBzcGVjaWZpY2F0aW9uIHRvIGF2b2lkIHByb2Js
ZW1zIHdpdGggYSBjcm9zcy1kcml2ZXINCiAgICAgIHd3IGxvY2tpbmcsIGxpa2Ugd2FzIHN1Z2dl
c3RlZCBieSBDaHJpc3RpYW4gS8O2bmlnLiBOb3cgdGhlIGF0dGFjaC9kZXRhY2gNCiAgICAgIGNh
bGxiYWNrcyBhcmUgaW52b2tlZCB3aXRob3V0IHRoZSBoZWxkIGxvY2sgYW5kIGV4cG9ydGVyIHNo
b3VsZCB0YWtlIHRoZQ0KICAgICAgbG9jay4NCg0KICAgIC0gQWRkZWQgImxvY2tpbmcgY29udmVu
dGlvbiIgZG9jdW1lbnRhdGlvbiB0aGF0IGV4cGxhaW5zIHdoaWNoIGRtYS1idWYNCiAgICAgIGZ1
bmN0aW9ucyBhbmQgY2FsbGJhY2tzIGFyZSBsb2NrZWQvdW5sb2NrZWQgZm9yIGltcG9ydGVycyBh
bmQgZXhwb3J0ZXJzLA0KICAgICAgd2hpY2ggd2FzIHJlcXVlc3RlZCBieSBDaHJpc3RpYW4gS8O2
bmlnLg0KDQogICAgLSBBZGRlZCBhY2sgZnJvbSBUb21hc3ogRmlnYSB0byB0aGUgVjRMIHBhdGNo
ZXMgdGhhdCBoZSBnYXZlIHRvIHYxLg0KDQpEbWl0cnkgT3NpcGVua28gKDIxKToNCiAgZG1hLWJ1
ZjogQWRkIHVubG9ja2VkIHZhcmlhbnQgb2Ygdm1hcHBpbmcgZnVuY3Rpb25zDQogIGRtYS1idWY6
IEFkZCB1bmxvY2tlZCB2YXJpYW50IG9mIGF0dGFjaG1lbnQtbWFwcGluZyBmdW5jdGlvbnMNCiAg
ZHJtL2dlbTogVGFrZSByZXNlcnZhdGlvbiBsb2NrIGZvciB2bWFwL3Z1bm1hcCBvcGVyYXRpb25z
DQogIGRybS9wcmltZTogUHJlcGFyZSB0byBkeW5hbWljIGRtYS1idWYgbG9ja2luZyBzcGVjaWZp
Y2F0aW9uDQogIGRybS9hcm1hZGE6IFByZXBhcmUgdG8gZHluYW1pYyBkbWEtYnVmIGxvY2tpbmcg
c3BlY2lmaWNhdGlvbg0KICBkcm0vaTkxNTogUHJlcGFyZSB0byBkeW5hbWljIGRtYS1idWYgbG9j
a2luZyBzcGVjaWZpY2F0aW9uDQogIGRybS9vbWFwZHJtOiBQcmVwYXJlIHRvIGR5bmFtaWMgZG1h
LWJ1ZiBsb2NraW5nIHNwZWNpZmljYXRpb24NCiAgZHJtL3RlZ3JhOiBQcmVwYXJlIHRvIGR5bmFt
aWMgZG1hLWJ1ZiBsb2NraW5nIHNwZWNpZmljYXRpb24NCiAgZHJtL2V0bmF2aXY6IFByZXBhcmUg
dG8gZHluYW1pYyBkbWEtYnVmIGxvY2tpbmcgc3BlY2lmaWNhdGlvbg0KICBSRE1BL3VtZW06IFBy
ZXBhcmUgdG8gZHluYW1pYyBkbWEtYnVmIGxvY2tpbmcgc3BlY2lmaWNhdGlvbg0KICBtaXNjOiBm
YXN0cnBjOiBQcmVwYXJlIHRvIGR5bmFtaWMgZG1hLWJ1ZiBsb2NraW5nIHNwZWNpZmljYXRpb24N
CiAgeGVuL2dudGRldjogUHJlcGFyZSB0byBkeW5hbWljIGRtYS1idWYgbG9ja2luZyBzcGVjaWZp
Y2F0aW9uDQogIG1lZGlhOiB2aWRlb2J1ZjI6IFByZXBhcmUgdG8gZHluYW1pYyBkbWEtYnVmIGxv
Y2tpbmcgc3BlY2lmaWNhdGlvbg0KICBtZWRpYTogdGVncmEtdmRlOiBQcmVwYXJlIHRvIGR5bmFt
aWMgZG1hLWJ1ZiBsb2NraW5nIHNwZWNpZmljYXRpb24NCiAgZG1hLWJ1ZjogTW92ZSBkbWFfYnVm
X3ZtYXAoKSB0byBkeW5hbWljIGxvY2tpbmcgc3BlY2lmaWNhdGlvbg0KICBkbWEtYnVmOiBNb3Zl
IGRtYV9idWZfYXR0YWNoKCkgdG8gZHluYW1pYyBsb2NraW5nIHNwZWNpZmljYXRpb24NCiAgZG1h
LWJ1ZjogTW92ZSBkbWFfYnVmX21hcF9hdHRhY2htZW50KCkgdG8gZHluYW1pYyBsb2NraW5nDQog
ICAgc3BlY2lmaWNhdGlvbg0KICBkbWEtYnVmOiBNb3ZlIGRtYV9idWZfbW1hcCgpIHRvIGR5bmFt
aWMgbG9ja2luZyBzcGVjaWZpY2F0aW9uDQogIGRtYS1idWY6IERvY3VtZW50IGR5bmFtaWMgbG9j
a2luZyBjb252ZW50aW9uDQogIG1lZGlhOiB2aWRlb2J1ZjI6IFN0b3AgdXNpbmcgaW50ZXJuYWwg
ZG1hLWJ1ZiBsb2NrDQogIGRtYS1idWY6IFJlbW92ZSBvYnNvbGV0ZWQgaW50ZXJuYWwgbG9jaw0K
DQogRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0ICAgICAgICAgIHwgICA2ICsN
CiBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jICAgICAgICAgICAgICAgICAgICAgfCAyMTQgKysr
KysrKysrKysrKysrLS0tDQogZHJpdmVycy9ncHUvZHJtL2FybWFkYS9hcm1hZGFfZ2VtLmMgICAg
ICAgICAgIHwgICA4ICstDQogZHJpdmVycy9ncHUvZHJtL2RybV9jbGllbnQuYyAgICAgICAgICAg
ICAgICAgIHwgICA0ICstDQogZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYyAgICAgICAgICAgICAg
ICAgICAgIHwgIDI0ICsrDQogZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fZG1hX2hlbHBlci5jICAg
ICAgICAgIHwgICA2ICstDQogZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fZnJhbWVidWZmZXJfaGVs
cGVyLmMgIHwgICA2ICstDQogZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fdHRtX2hlbHBlci5jICAg
ICAgICAgIHwgICA5ICstDQogZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jICAgICAgICAgICAg
ICAgICAgIHwgICA2ICstDQogZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW1fcHJp
bWUuYyAgIHwgICAyICstDQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1
Zi5jICAgIHwgICAyICstDQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVj
dC5jICAgIHwgIDE0ICsrDQogLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fZG1h
YnVmLmMgIHwgIDE2ICstDQogZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9zY2hlZC5jICAgICAg
ICAgICAgIHwgICA0ICstDQogZHJpdmVycy9ncHUvZHJtL29tYXBkcm0vb21hcF9nZW1fZG1hYnVm
LmMgICAgIHwgICA0ICstDQogZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2R1bXAu
YyAgICAgIHwgICA0ICstDQogZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X3BlcmZj
bnQuYyAgIHwgICA2ICstDQogZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfb2JqZWN0LmMgICAgICAg
ICAgICAgIHwgIDE3ICstDQogZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfcHJpbWUuYyAgICAgICAg
ICAgICAgIHwgICA0ICstDQogZHJpdmVycy9ncHUvZHJtL3RlZ3JhL2dlbS5jICAgICAgICAgICAg
ICAgICAgIHwgIDE3ICstDQogZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvdW1lbV9kbWFidWYuYyAg
ICAgICAgIHwgICA3ICstDQogLi4uL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250
aWcuYyAgIHwgIDIyICstDQogLi4uL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRt
YS1zZy5jIHwgIDE5ICstDQogLi4uL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLXZtYWxsb2Mu
YyAgICAgIHwgIDE3ICstDQogLi4uL3BsYXRmb3JtL252aWRpYS90ZWdyYS12ZGUvZG1hYnVmLWNh
Y2hlLmMgIHwgICA2ICstDQogZHJpdmVycy9taXNjL2Zhc3RycGMuYyAgICAgICAgICAgICAgICAg
ICAgICAgIHwgICA2ICstDQogZHJpdmVycy94ZW4vZ250ZGV2LWRtYWJ1Zi5jICAgICAgICAgICAg
ICAgICAgIHwgICA4ICstDQogaW5jbHVkZS9kcm0vZHJtX2dlbS5oICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgICAzICsNCiBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaCAgICAgICAgICAgICAgICAg
ICAgICAgfCAgMTcgKy0NCiAyOSBmaWxlcyBjaGFuZ2VkLCAzMjMgaW5zZXJ0aW9ucygrKSwgMTU1
IGRlbGV0aW9ucygtKQ0KDQotLSANCjIuMzcuMw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
