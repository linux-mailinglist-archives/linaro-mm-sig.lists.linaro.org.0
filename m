Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 940F5786877
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 09:37:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 933B941A59
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 07:37:31 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id A807F3F637
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Aug 2023 07:37:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=t6Uje6qs;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4582E6449B;
	Thu, 24 Aug 2023 07:37:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E109C433C9;
	Thu, 24 Aug 2023 07:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692862645;
	bh=apVo29quPAJNJ5zBNsotHOwD/sJ5HhXMBXuZaLSVig8=;
	h=From:To:Cc:Subject:Date:From;
	b=t6Uje6qsOtieNhKUK3PZ0NhYuVib0TYmuGgGXn/SM+BGz5yDI7Yv6Ic7/Q9SIMUoM
	 75jPH2B3yCqjB3etVZHJUsItPk+uS+QXbwFon6ZWnUHV0WvtOs0kOkmr/o9C48sf22
	 81r6ukOs+zNlnQuf4jGA8hYZhqmMf6Mc5DhcJNo4+uYaZOIMlCMSk8ezNAjSNX3y1r
	 L8ZsdtuEADnpUNzDfLQVv48w19gXSemSY9q/ESnKx2YKJwvrQoCFzyxlX1vA0+rsjp
	 EvLKEudsnhcXwz+dcCssbhSPSkdTNL+XLYFIzHsS7Jx93dkGS/l/b1fPNoO6EGgv3R
	 vFR2L2MSGRfYw==
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org
Date: Thu, 24 Aug 2023 08:36:45 +0100
Message-ID: <20230824073710.2677348-1-lee@kernel.org>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
MIME-Version: 1.0
X-Rspamd-Queue-Id: A807F3F637
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCVD_TLS_ALL(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,lists.freedesktop.org,redhat.com,ffwll.ch,gmail.com,nvidia.com,xilinx.com,freedesktop.org,ideasonboard.com,lists.linaro.org,lists.infradead.org,linux.intel.com,riseup.net,kernel.org,nxp.com,pengutronix.de,linaro.org,suse.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: F2TKGMCSZQVGECL7JJIJXJPHY4HVT27M
X-Message-ID-Hash: F2TKGMCSZQVGECL7JJIJXJPHY4HVT27M
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, Alex Deucher <alexander.deucher@amd.com>, amd-gfx@lists.freedesktop.org, Ben Skeggs <bskeggs@redhat.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Danilo Krummrich <dakr@redhat.com>, dri-devel@lists.freedesktop.org, Fabio Estevam <festevam@gmail.com>, Gourav Samaiya <gsamaiya@nvidia.com>, Hawking Zhang <Hawking.Zhang@amd.com>, Hyun Kwon <hyun.kwon@xilinx.com>, Jerome Glisse <glisse@freedesktop.org>, Jonathan Hunter <jonathanh@nvidia.com>, Karol Herbst <kherbst@redhat.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linux-tegra@vger.kernel.org, Luben Tuikov <luben.tuikov@amd.com>, Lyude Paul <lyude@redhat.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, =?UTF-8?q?Ma=C3=ADra=20Canal?= <mairacanal@riseup.net>, Mario Limonciello <mario.limonciello@amd.com>, Maxime Ripard <mripard@
 kernel.org>, Michal Simek <michal.simek@xilinx.com>, Mikko Perttunen <mperttunen@nvidia.com>, nouveau@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>, Shashank Sharma <shashank.sharma@amd.com>, Shawn Guo <shawnguo@kernel.org>, Stanley Yang <Stanley.Yang@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Thierry Reding <thierry.reding@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH (set 1) 00/20] Rid W=1 warnings from GPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F2TKGMCSZQVGECL7JJIJXJPHY4HVT27M/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBzZXQgaXMgcGFydCBvZiBhIGxhcmdlciBlZmZvcnQgYXR0ZW1wdGluZyB0byBjbGVhbi11
cCBXPTENCmtlcm5lbCBidWlsZHMsIHdoaWNoIGFyZSBjdXJyZW50bHkgb3ZlcndoZWxtaW5nbHkg
cmlkZGxlZCB3aXRoDQpuaWdnbHkgbGl0dGxlIHdhcm5pbmdzLg0KDQpDYzogQWxleCBEZXVjaGVy
IDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPg0KQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQpDYzogQmVuIFNrZWdncyA8YnNrZWdnc0ByZWRoYXQuY29tPg0KQ2M6ICJDaHJpc3Rp
YW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ2M6IERhbmllbCBWZXR0ZXIg
PGRhbmllbEBmZndsbC5jaD4NCkNjOiBEYW5pbG8gS3J1bW1yaWNoIDxkYWtyQHJlZGhhdC5jb20+
DQpDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4NCkNjOiBkcmktZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogRmFiaW8gRXN0ZXZhbSA8ZmVzdGV2YW1AZ21haWwuY29t
Pg0KQ2M6IEdvdXJhdiBTYW1haXlhIDxnc2FtYWl5YUBudmlkaWEuY29tPg0KQ2M6IEhhd2tpbmcg
WmhhbmcgPEhhd2tpbmcuWmhhbmdAYW1kLmNvbT4NCkNjOiBIeXVuIEt3b24gPGh5dW4ua3dvbkB4
aWxpbnguY29tPg0KQ2M6IEplcm9tZSBHbGlzc2UgPGdsaXNzZUBmcmVlZGVza3RvcC5vcmc+DQpD
YzogSm9uYXRoYW4gSHVudGVyIDxqb25hdGhhbmhAbnZpZGlhLmNvbT4NCkNjOiBLYXJvbCBIZXJi
c3QgPGtoZXJic3RAcmVkaGF0LmNvbT4NCkNjOiBMYXVyZW50IFBpbmNoYXJ0IDxsYXVyZW50LnBp
bmNoYXJ0QGlkZWFzb25ib2FyZC5jb20+DQpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnDQpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnDQpDYzogbGludXgt
bWVkaWFAdmdlci5rZXJuZWwub3JnDQpDYzogbGludXgtdGVncmFAdmdlci5rZXJuZWwub3JnDQpD
YzogTHViZW4gVHVpa292IDxsdWJlbi50dWlrb3ZAYW1kLmNvbT4NCkNjOiBMeXVkZSBQYXVsIDxs
eXVkZUByZWRoYXQuY29tPg0KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3Jz
dEBsaW51eC5pbnRlbC5jb20+DQpDYzogIk1hw61yYSBDYW5hbCIgPG1haXJhY2FuYWxAcmlzZXVw
Lm5ldD4NCkNjOiBNYXJpbyBMaW1vbmNpZWxsbyA8bWFyaW8ubGltb25jaWVsbG9AYW1kLmNvbT4N
CkNjOiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+DQpDYzogTWljaGFsIFNpbWVr
IDxtaWNoYWwuc2ltZWtAeGlsaW54LmNvbT4NCkNjOiBNaWtrbyBQZXJ0dHVuZW4gPG1wZXJ0dHVu
ZW5AbnZpZGlhLmNvbT4NCkNjOiBub3V2ZWF1QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KQ2M6IE5Y
UCBMaW51eCBUZWFtIDxsaW51eC1pbXhAbnhwLmNvbT4NCkNjOiAiUGFuLCBYaW5odWkiIDxYaW5o
dWkuUGFuQGFtZC5jb20+DQpDYzogUGVuZ3V0cm9uaXggS2VybmVsIFRlYW0gPGtlcm5lbEBwZW5n
dXRyb25peC5kZT4NCkNjOiBQaGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1dHJvbml4LmRlPg0K
Q2M6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4NCkNjOiBTaGFzaGFuayBT
aGFybWEgPHNoYXNoYW5rLnNoYXJtYUBhbWQuY29tPg0KQ2M6IFNoYXduIEd1byA8c2hhd25ndW9A
a2VybmVsLm9yZz4NCkNjOiBTdGFubGV5IFlhbmcgPFN0YW5sZXkuWWFuZ0BhbWQuY29tPg0KQ2M6
IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+DQpDYzogVGhpZXJyeSBSZWRp
bmcgPHRoaWVycnkucmVkaW5nQGdtYWlsLmNvbT4NCkNjOiBUaG9tYXMgWmltbWVybWFubiA8dHpp
bW1lcm1hbm5Ac3VzZS5kZT4NCg0KTGVlIEpvbmVzICgyMCk6DQogIGRybS94bG54L3p5bnFtcF9k
aXNwOiBVc2UgY29ycmVjdCBrZXJuZWxkb2MgZm9ybWF0dGluZyBpbiB6eW5xbXBfZGlzcA0KICBk
cm0vbm91dmVhdS9udmttL3N1YmRldi9hY3IvbHNmdzogUmVtb3ZlIHVudXNlZCB2YXJpYWJsZSAn
bG9jJw0KICBkcm0vbm91dmVhdS9udmttL3N1YmRldi9iaW9zL2luaXQ6IERlbW90ZSBhIGJ1bmNo
IG9mIGtlcm5lbC1kb2MgYWJ1c2VzDQogIGRybS9ub3V2ZWF1L252a20vc3ViZGV2L3ZvbHQvZ2sy
MGE6IERlbW90ZSBrZXJuZWxkb2MgYWJ1c2VzDQogIGRybS9ub3V2ZWF1L252a20vZW5naW5lL2dy
L2dmMTAwOiBEZW1vdGUga2VybmVsZG9jIGFidXNlDQogIGRybS9ub3V2ZWF1L2Rpc3BudjA0L2Ny
dGM6IERlbW90ZSBrZXJuZWxkb2MgYWJ1c2VzDQogIGRybS9yYWRlb24vcmFkZW9uX3R0bTogUmVt
b3ZlIHVudXNlZCB2YXJpYWJsZSAncmJvJyBmcm9tDQogICAgcmFkZW9uX2JvX21vdmUoKQ0KICBk
cm0vYW1kL2FtZGdwdS9zZG1hX3Y2XzA6IERlbW90ZSBhIGJ1bmNoIG9mIGhhbGYtY29tcGxldGVk
IGZ1bmN0aW9uDQogICAgaGVhZGVycw0KICBkcm0vdGVzdHMvZHJtX2t1bml0X2hlbHBlcnM6IFBs
YWNlIGNvcnJlY3QgZnVuY3Rpb24gbmFtZSBpbiB0aGUNCiAgICBjb21tZW50IGhlYWRlcg0KICBk
cm0vc2NoZWR1bGVyL3NjaGVkX21haW46IFByb3ZpZGUgc2hvcnQgZGVzY3JpcHRpb24gb2YgbWlz
c2luZyBwYXJhbQ0KICAgICdyZXN1bHQnDQogIGRybS9hbWQvYW1kZ3B1L2FtZGdwdV9kb29yYmVs
bF9tZ3I6IENvcnJlY3QgbWlzZG9jdW1lbnRlZCBwYXJhbQ0KICAgICdkb29yYmVsbF9pbmRleCcN
CiAgZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RldmljZTogUHJvdmlkZSBzdWl0YWJsZSBkZXNjcmlw
dGlvbiBmb3IgcGFyYW0NCiAgICAneGNjX2lkJw0KICBkcm0vdGVzdHMvZHJtX2t1bml0X2hlbHBl
cnM6IENvcnJlY3QgcG9zc2libGUgZG91YmxlLWVudHJ5IHR5cG8gaW4NCiAgICAnZGRybV9rdW5p
dF9oZWxwZXJfYWNxdWlyZV9jdHhfYWxsb2MnDQogIGRybS9pbXgvaXB1djMvaW14LWxkYjogSW5j
cmVhc2UgYnVmZmVyIHNpemUgdG8gZW5zdXJlIGFsbCBwb3NzaWJsZQ0KICAgIHZhbHVlcyBjYW4g
YmUgc3RvcmVkDQogIGRybS90ZWdyYS9odWI6IEluY3JlYXNlIGJ1ZmZlciBzaXplIHRvIGVuc3Vy
ZSBhbGwgcG9zc2libGUgdmFsdWVzIGNhbg0KICAgIGJlIHN0b3JlZA0KICBkcm0vZHJtX2Nvbm5l
Y3RvcjogUHJvdmlkZSBzaG9ydCBkZXNjcmlwdGlvbiBvZiBwYXJhbQ0KICAgICdzdXBwb3J0ZWRf
Y29sb3JzcGFjZXMnDQogIGRybS9hbWQvYW1kZ3B1L2FtZGdwdV9yYXM6IEluY3JlYXNlIGJ1ZmZl
ciBzaXplIHRvIGFjY291bnQgZm9yIGFsbA0KICAgIHBvc3NpYmxlIHZhbHVlcw0KICBkcm0vZHJt
X2dwdXZhX21ncjogUmVtb3ZlIHNldCBidXQgdW51c2VkIHZhcmlhYmxlICdwcmV2Jw0KICBkcm0v
YW1kL2FtZGdwdS9hbWRncHVfc2RtYTogSW5jcmVhc2UgYnVmZmVyIHNpemUgdG8gYWNjb3VudCBm
b3IgYWxsDQogICAgcG9zc2libGUgdmFsdWVzDQogIGRybS9hbWQvYW1kZ3B1L2ltdV92MTFfMDog
SW5jcmVhc2UgYnVmZmVyIHNpemUgdG8gZW5zdXJlIGFsbCBwb3NzaWJsZQ0KICAgIHZhbHVlcyBj
YW4gYmUgc3RvcmVkDQoNCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNl
LmMgICAgfCAgIDEgKw0KIC4uLi9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rvb3JiZWxsX21n
ci5jICB8ICAgMiArLQ0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9yYXMuaCAg
ICAgICB8ICAgMiArLQ0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9zZG1hLmMg
ICAgICB8ICAgMiArLQ0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2ltdV92MTFfMC5jICAg
ICAgICB8ICAgMiArLQ0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjZfMC5jICAg
ICAgICB8ICAgOCArLQ0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmMgICAgICAgICAg
ICAgICB8ICAgMiArDQogZHJpdmVycy9ncHUvZHJtL2RybV9ncHV2YV9tZ3IuYyAgICAgICAgICAg
ICAgIHwgIDEwICstDQogZHJpdmVycy9ncHUvZHJtL2lteC9pcHV2My9pbXgtbGRiLmMgICAgICAg
ICAgIHwgICAyICstDQogZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvZGlzcG52MDQvY3J0Yy5jICAg
ICAgIHwgICA0ICstDQogLi4uL2dwdS9kcm0vbm91dmVhdS9udmttL2VuZ2luZS9nci9nZjEwMC5j
ICAgIHwgICAyICstDQogLi4uL2dwdS9kcm0vbm91dmVhdS9udmttL3N1YmRldi9hY3IvbHNmdy5j
ICAgIHwgICAzICstDQogLi4uL2dwdS9kcm0vbm91dmVhdS9udmttL3N1YmRldi9iaW9zL2luaXQu
YyAgIHwgMTM2ICsrKysrKysrKy0tLS0tLS0tLQ0KIC4uLi9ncHUvZHJtL25vdXZlYXUvbnZrbS9z
dWJkZXYvdm9sdC9nazIwYS5jICB8ICAgNCArLQ0KIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFk
ZW9uX3R0bS5jICAgICAgICAgICB8ICAgMiAtDQogZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9z
Y2hlZF9tYWluLmMgICAgICAgIHwgICAxICsNCiBkcml2ZXJzL2dwdS9kcm0vdGVncmEvaHViLmMg
ICAgICAgICAgICAgICAgICAgfCAgIDIgKy0NCiBkcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2t1
bml0X2hlbHBlcnMuYyAgICAgfCAgIDIgKy0NCiBkcml2ZXJzL2dwdS9kcm0veGxueC96eW5xbXBf
ZGlzcC5jICAgICAgICAgICAgfCAgIDYgKy0NCiAxOSBmaWxlcyBjaGFuZ2VkLCA5NiBpbnNlcnRp
b25zKCspLCA5NyBkZWxldGlvbnMoLSkNCg0KLS0gDQoyLjQyLjAucmMxLjIwNC5nNTUxZWIzNDYw
Ny1nb29nDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
