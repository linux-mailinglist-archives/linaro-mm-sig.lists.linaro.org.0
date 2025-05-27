Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F7CAC58E5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 May 2025 19:50:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3FAD944422
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 May 2025 17:50:28 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id F07E140D48
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 May 2025 17:50:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=oA1eoczi;
	spf=pass (lists.linaro.org: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 24687614C0;
	Tue, 27 May 2025 17:50:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CF8EC4CEE9;
	Tue, 27 May 2025 17:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1748368215;
	bh=6k1840xhtmmJ8vLPO0yw7rK4g00Rdii3B/tCX0s61uQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oA1eoczihpBc3v4Lr7pUxBADdlxQFxVVnaU6ARl7j/zWpnYxdZthfRhR5QR5ftvOB
	 lSbo+L6wl071hagFiue1mUaHv5iKTWuH1OOGctIUMDuOr/m74JplkF3fQ6QMOt88sh
	 /+p2s8uh4qniKO/Y1aWmPEgWYfUg4yNMoY0Y3C9g=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Date: Tue, 27 May 2025 18:27:12 +0200
Message-ID: <20250527162539.004348171@linuxfoundation.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250527162513.035720581@linuxfoundation.org>
References: <20250527162513.035720581@linuxfoundation.org>
User-Agent: quilt/0.68
X-stable: review
X-Patchwork-Hint: ignore
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[18];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linuxfoundation.org,lists.linux.dev,suse.de,163.com,redhat.com,amd.com,linux.intel.com,kernel.org,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,collabora.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[linuxfoundation.org:+]
X-Rspamd-Queue-Id: F07E140D48
X-Spamd-Bar: --------
Message-ID-Hash: V2BL4CLHAUHIPEJAAYQIZDJQ5UAOMLPZ
X-Message-ID-Hash: V2BL4CLHAUHIPEJAAYQIZDJQ5UAOMLPZ
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, patches@lists.linux.dev, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andyshrk@163.com>, Anusha Srivatsa <asrivats@redhat.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Boris Brezillon <boris.brezillon@collabora.com>, Simona Vetter <simona.vetter@ffwll.ch>, Sasha Levin <sashal@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 6.14 635/783] drm/gem: Internally test import_attach for imported objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V2BL4CLHAUHIPEJAAYQIZDJQ5UAOMLPZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Ni4xNC1zdGFibGUgcmV2aWV3IHBhdGNoLiAgSWYgYW55b25lIGhhcyBhbnkgb2JqZWN0aW9ucywg
cGxlYXNlIGxldCBtZSBrbm93Lg0KDQotLS0tLS0tLS0tLS0tLS0tLS0NCg0KRnJvbTogVGhvbWFz
IFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQoNClsgVXBzdHJlYW0gY29tbWl0IDgy
NjA3MzFjY2FkMDQ1MTIwN2I0NTg0NGJiNjZlYjE2MWEyMDkyMTggXQ0KDQpUZXN0IHN0cnVjdCBk
cm1fZ2VtX29iamVjdC5pbXBvcnRfYXR0YWNoIHRvIGRldGVjdCBpbXBvcnRlZCBvYmplY3RzLg0K
DQpEdXJpbmcgb2JqZWN0IGNsZW5hbnVwLCB0aGUgZG1hX2J1ZiBmaWVsZCBtaWdodCBiZSBOVUxM
LiBUZXN0aW5nIGl0IGluDQphbiBvYmplY3QncyBmcmVlIGNhbGxiYWNrIHRoZW4gaW5jb3JyZWN0
bHkgZG9lcyBhIGNsZWFudXAgYXMgZm9yIG5hdGl2ZQ0Kb2JqZWN0cy4gSGFwcGVucyBmb3IgY2Fs
bHMgdG8gZHJtX21vZGVfZGVzdHJveV9kdW1iX2lvY3RsKCkgdGhhdA0KY2xlYXJzIHRoZSBkbWFf
YnVmIGZpZWxkIGluIGRybV9nZW1fb2JqZWN0X2V4cG9ydGVkX2RtYV9idWZfZnJlZSgpLg0KDQp2
MzoNCi0gb25seSB0ZXN0IGZvciBpbXBvcnRfYXR0YWNoIChCb3JpcykNCnYyOg0KLSB1c2UgaW1w
b3J0X2F0dGFjaC5kbWFidWYgaW5zdGVhZCBvZiBkbWFfYnVmIChDaHJpc3RpYW4pDQoNClNpZ25l
ZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KRml4ZXM6
IGI1N2FhNDdkMzllOSAoImRybS9nZW06IFRlc3QgZm9yIGltcG9ydGVkIEdFTSBidWZmZXJzIHdp
dGggaGVscGVyIikNClJlcG9ydGVkLWJ5OiBBbmR5IFlhbiA8YW5keXNocmtAMTYzLmNvbT4NCkNs
b3NlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzM4ZDA5ZDM0LjQzNTQuMTk2
Mzc5YWE1NjAuQ29yZW1haWwuYW5keXNocmtAMTYzLmNvbS8NClRlc3RlZC1ieTogQW5keSBZYW4g
PGFuZHlzaHJrQDE2My5jb20+DQpDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1
c2UuZGU+DQpDYzogQW51c2hhIFNyaXZhdHNhIDxhc3JpdmF0c0ByZWRoYXQuY29tPg0KQ2M6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkNjOiBNYWFydGVuIExh
bmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPg0KQ2M6IE1heGltZSBS
aXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4NCkNjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAZ21h
aWwuY29tPg0KQ2M6IFNpbW9uYSBWZXR0ZXIgPHNpbW9uYUBmZndsbC5jaD4NCkNjOiBTdW1pdCBT
ZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCkNjOiBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcNClJldmlld2VkLWJ5OiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJy
ZXppbGxvbkBjb2xsYWJvcmEuY29tPg0KUmV2aWV3ZWQtYnk6IFNpbW9uYSBWZXR0ZXIgPHNpbW9u
YS52ZXR0ZXJAZmZ3bGwuY2g+DQpMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUw
NDE2MDY1ODIwLjI2MDc2LTEtdHppbW1lcm1hbm5Ac3VzZS5kZQ0KU2lnbmVkLW9mZi1ieTogU2Fz
aGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwub3JnPg0KLS0tDQogaW5jbHVkZS9kcm0vZHJtX2dlbS5o
IHwgMyArLS0NCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0p
DQoNCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fZ2VtLmggYi9pbmNsdWRlL2RybS9kcm1f
Z2VtLmgNCmluZGV4IDJiZjg5M2VhYmI0YjIuLmJjZDU0MDIwZDZiYTUgMTAwNjQ0DQotLS0gYS9p
bmNsdWRlL2RybS9kcm1fZ2VtLmgNCisrKyBiL2luY2x1ZGUvZHJtL2RybV9nZW0uaA0KQEAgLTU4
NSw4ICs1ODUsNyBAQCBzdGF0aWMgaW5saW5lIGJvb2wgZHJtX2dlbV9vYmplY3RfaXNfc2hhcmVk
X2Zvcl9tZW1vcnlfc3RhdHMoc3RydWN0IGRybV9nZW1fb2JqZQ0KICAqLw0KIHN0YXRpYyBpbmxp
bmUgYm9vbCBkcm1fZ2VtX2lzX2ltcG9ydGVkKGNvbnN0IHN0cnVjdCBkcm1fZ2VtX29iamVjdCAq
b2JqKQ0KIHsNCi0JLyogVGhlIGRtYS1idWYncyBwcml2IGZpZWxkIHBvaW50cyB0byB0aGUgb3Jp
Z2luYWwgR0VNIG9iamVjdC4gKi8NCi0JcmV0dXJuIG9iai0+ZG1hX2J1ZiAmJiAob2JqLT5kbWFf
YnVmLT5wcml2ICE9IG9iaik7DQorCXJldHVybiAhIW9iai0+aW1wb3J0X2F0dGFjaDsNCiB9DQog
DQogI2lmZGVmIENPTkZJR19MT0NLREVQDQotLSANCjIuMzkuNQ0KDQoNCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
