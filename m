Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 21505ACB1C5
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Jun 2025 16:23:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E51D344B14
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Jun 2025 14:23:33 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id BFDE344991
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Jun 2025 14:23:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=nb9MNeYX;
	spf=pass (lists.linaro.org: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 428876111C;
	Mon,  2 Jun 2025 14:23:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4782AC4CEEB;
	Mon,  2 Jun 2025 14:23:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1748874202;
	bh=iUzlmyuE3KzGN6EwcgbeLBTuduXBTYp2vKPAEfXyhYs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nb9MNeYXH3litdvJnm8HXo7tl6aQBXO6/iQiTbcxGmDKnkaAU0GQOeDL6OPuDD8yt
	 kZXkY2/XWMX2MkUj53VwQCBs5QMbr9H+OFTRr39zOMOtMV9Ae42Cp4R9VFrsxkP0mk
	 gXC+jJMoT5kcbDOv5o2PtI0Fx61caSVhLs3t0UOs=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Date: Mon,  2 Jun 2025 15:47:35 +0200
Message-ID: <20250602134356.780212081@linuxfoundation.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250602134340.906731340@linuxfoundation.org>
References: <20250602134340.906731340@linuxfoundation.org>
User-Agent: quilt/0.68
X-stable: review
X-Patchwork-Hint: ignore
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	URIBL_BLOCKED(0.00)[linaro.org:email,intel.com:email];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linuxfoundation.org,lists.linux.dev,suse.de,163.com,redhat.com,amd.com,linux.intel.com,kernel.org,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,collabora.com];
	DWL_DNSWL_NONE(0.00)[linuxfoundation.org:dkim];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linuxfoundation.org:+]
X-Rspamd-Queue-Id: BFDE344991
X-Spamd-Bar: -------
Message-ID-Hash: G7GTWM764X3N7LZATMOJFIJ5FO7POUXF
X-Message-ID-Hash: G7GTWM764X3N7LZATMOJFIJ5FO7POUXF
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, patches@lists.linux.dev, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andyshrk@163.com>, Anusha Srivatsa <asrivats@redhat.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Boris Brezillon <boris.brezillon@collabora.com>, Simona Vetter <simona.vetter@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 6.6 391/444] drm/gem: Internally test import_attach for imported objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G7GTWM764X3N7LZATMOJFIJ5FO7POUXF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Ni42LXN0YWJsZSByZXZpZXcgcGF0Y2guICBJZiBhbnlvbmUgaGFzIGFueSBvYmplY3Rpb25zLCBw
bGVhc2UgbGV0IG1lIGtub3cuDQoNCi0tLS0tLS0tLS0tLS0tLS0tLQ0KDQpGcm9tOiBUaG9tYXMg
WmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4NCg0KY29tbWl0IDgyNjA3MzFjY2FkMDQ1
MTIwN2I0NTg0NGJiNjZlYjE2MWEyMDkyMTggdXBzdHJlYW0uDQoNClRlc3Qgc3RydWN0IGRybV9n
ZW1fb2JqZWN0LmltcG9ydF9hdHRhY2ggdG8gZGV0ZWN0IGltcG9ydGVkIG9iamVjdHMuDQoNCkR1
cmluZyBvYmplY3QgY2xlbmFudXAsIHRoZSBkbWFfYnVmIGZpZWxkIG1pZ2h0IGJlIE5VTEwuIFRl
c3RpbmcgaXQgaW4NCmFuIG9iamVjdCdzIGZyZWUgY2FsbGJhY2sgdGhlbiBpbmNvcnJlY3RseSBk
b2VzIGEgY2xlYW51cCBhcyBmb3IgbmF0aXZlDQpvYmplY3RzLiBIYXBwZW5zIGZvciBjYWxscyB0
byBkcm1fbW9kZV9kZXN0cm95X2R1bWJfaW9jdGwoKSB0aGF0DQpjbGVhcnMgdGhlIGRtYV9idWYg
ZmllbGQgaW4gZHJtX2dlbV9vYmplY3RfZXhwb3J0ZWRfZG1hX2J1Zl9mcmVlKCkuDQoNCnYzOg0K
LSBvbmx5IHRlc3QgZm9yIGltcG9ydF9hdHRhY2ggKEJvcmlzKQ0KdjI6DQotIHVzZSBpbXBvcnRf
YXR0YWNoLmRtYWJ1ZiBpbnN0ZWFkIG9mIGRtYV9idWYgKENocmlzdGlhbikNCg0KU2lnbmVkLW9m
Zi1ieTogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQpGaXhlczogYjU3
YWE0N2QzOWU5ICgiZHJtL2dlbTogVGVzdCBmb3IgaW1wb3J0ZWQgR0VNIGJ1ZmZlcnMgd2l0aCBo
ZWxwZXIiKQ0KUmVwb3J0ZWQtYnk6IEFuZHkgWWFuIDxhbmR5c2hya0AxNjMuY29tPg0KQ2xvc2Vz
OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMzhkMDlkMzQuNDM1NC4xOTYzNzlh
YTU2MC5Db3JlbWFpbC5hbmR5c2hya0AxNjMuY29tLw0KVGVzdGVkLWJ5OiBBbmR5IFlhbiA8YW5k
eXNocmtAMTYzLmNvbT4NCkNjOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5k
ZT4NCkNjOiBBbnVzaGEgU3JpdmF0c2EgPGFzcml2YXRzQHJlZGhhdC5jb20+DQpDYzogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ2M6IE1hYXJ0ZW4gTGFua2hv
cnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+DQpDYzogTWF4aW1lIFJpcGFy
ZCA8bXJpcGFyZEBrZXJuZWwub3JnPg0KQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBnbWFpbC5j
b20+DQpDYzogU2ltb25hIFZldHRlciA8c2ltb25hQGZmd2xsLmNoPg0KQ2M6IFN1bWl0IFNlbXdh
bCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+DQpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+DQpDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KQ2M6IGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZw0KUmV2aWV3ZWQtYnk6IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemls
bG9uQGNvbGxhYm9yYS5jb20+DQpSZXZpZXdlZC1ieTogU2ltb25hIFZldHRlciA8c2ltb25hLnZl
dHRlckBmZndsbC5jaD4NCkxpbms6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTA0MTYw
NjU4MjAuMjYwNzYtMS10emltbWVybWFubkBzdXNlLmRlDQpTaWduZWQtb2ZmLWJ5OiBHcmVnIEty
b2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPg0KLS0tDQogaW5jbHVkZS9k
cm0vZHJtX2dlbS5oIHwgICAgMyArLS0NCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDIgZGVsZXRpb25zKC0pDQoNCi0tLSBhL2luY2x1ZGUvZHJtL2RybV9nZW0uaA0KKysrIGIvaW5j
bHVkZS9kcm0vZHJtX2dlbS5oDQpAQCAtNTY3LDggKzU2Nyw3IEBAIHN0YXRpYyBpbmxpbmUgYm9v
bCBkcm1fZ2VtX29iamVjdF9pc19zaGENCiAgKi8NCiBzdGF0aWMgaW5saW5lIGJvb2wgZHJtX2dl
bV9pc19pbXBvcnRlZChjb25zdCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikNCiB7DQotCS8q
IFRoZSBkbWEtYnVmJ3MgcHJpdiBmaWVsZCBwb2ludHMgdG8gdGhlIG9yaWdpbmFsIEdFTSBvYmpl
Y3QuICovDQotCXJldHVybiBvYmotPmRtYV9idWYgJiYgKG9iai0+ZG1hX2J1Zi0+cHJpdiAhPSBv
YmopOw0KKwlyZXR1cm4gISFvYmotPmltcG9ydF9hdHRhY2g7DQogfQ0KIA0KICNpZmRlZiBDT05G
SUdfTE9DS0RFUA0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
