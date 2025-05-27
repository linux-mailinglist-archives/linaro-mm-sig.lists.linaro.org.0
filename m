Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E8976AC5239
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 May 2025 17:37:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0717E455DE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 May 2025 15:37:06 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 584EB45014
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 May 2025 15:36:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=dkABvHKa;
	spf=pass (lists.linaro.org: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id BD35761129;
	Tue, 27 May 2025 15:36:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07706C4CEE9;
	Tue, 27 May 2025 15:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1748360214;
	bh=uoZB2xLuusQy2grwbi+1KiWAoYCPkPedsUt7dWfAwCE=;
	h=Subject:To:Cc:From:Date:From;
	b=dkABvHKaqe6KaDFmXEmklst4iRRLehWW30afDEu4wRe8vu4JrLx1XBrgriivGkHuR
	 Ha/huNLIA9bZfd/fUX/OR3wI+jYixCFWMnqvdwulgftJFJfyZD2rTyG9isov4ElPvF
	 oxzMAJXN42zsCSdQ6TkrE1l4a+hUdU5USHkVXVAg=
To: airlied@gmail.com,andyshrk@163.com,asrivats@redhat.com,boris.brezillon@collabora.com,christian.koenig@amd.com,dri-devel@lists.freedesktop.org,gregkh@linuxfoundation.org,linaro-mm-sig@lists.linaro.org,maarten.lankhorst@linux.intel.com,mripard@kernel.org,simona.vetter@ffwll.ch,simona@ffwll.ch,sumit.semwal@linaro.org,tzimmermann@suse.de
From: <gregkh@linuxfoundation.org>
Date: Tue, 27 May 2025 17:36:51 +0200
Message-ID: <2025052750-oil-pampered-aed6@gregkh>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [0.50 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	FROM_NO_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[gmail.com,163.com,redhat.com,collabora.com,amd.com,lists.freedesktop.org,linuxfoundation.org,lists.linaro.org,linux.intel.com,kernel.org,ffwll.ch,linaro.org,suse.de];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[linuxfoundation.org:+]
X-Rspamd-Queue-Id: 584EB45014
X-Spamd-Bar: /
Message-ID-Hash: HX6PBM4JUUSCDFMFQI7CHEREXSAM46G5
X-Message-ID-Hash: HX6PBM4JUUSCDFMFQI7CHEREXSAM46G5
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: stable-commits@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Patch "drm/gem: Internally test import_attach for imported objects" has been added to the 6.6-stable tree
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HX6PBM4JUUSCDFMFQI7CHEREXSAM46G5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpUaGlzIGlzIGEgbm90ZSB0byBsZXQgeW91IGtub3cgdGhhdCBJJ3ZlIGp1c3QgYWRkZWQgdGhl
IHBhdGNoIHRpdGxlZA0KDQogICAgZHJtL2dlbTogSW50ZXJuYWxseSB0ZXN0IGltcG9ydF9hdHRh
Y2ggZm9yIGltcG9ydGVkIG9iamVjdHMNCg0KdG8gdGhlIDYuNi1zdGFibGUgdHJlZSB3aGljaCBj
YW4gYmUgZm91bmQgYXQ6DQogICAgaHR0cDovL3d3dy5rZXJuZWwub3JnL2dpdC8/cD1saW51eC9r
ZXJuZWwvZ2l0L3N0YWJsZS9zdGFibGUtcXVldWUuZ2l0O2E9c3VtbWFyeQ0KDQpUaGUgZmlsZW5h
bWUgb2YgdGhlIHBhdGNoIGlzOg0KICAgICBkcm0tZ2VtLWludGVybmFsbHktdGVzdC1pbXBvcnRf
YXR0YWNoLWZvci1pbXBvcnRlZC1vYmplY3RzLnBhdGNoDQphbmQgaXQgY2FuIGJlIGZvdW5kIGlu
IHRoZSBxdWV1ZS02LjYgc3ViZGlyZWN0b3J5Lg0KDQpJZiB5b3UsIG9yIGFueW9uZSBlbHNlLCBm
ZWVscyBpdCBzaG91bGQgbm90IGJlIGFkZGVkIHRvIHRoZSBzdGFibGUgdHJlZSwNCnBsZWFzZSBs
ZXQgPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+IGtub3cgYWJvdXQgaXQuDQoNCg0KPkZyb20gODI2
MDczMWNjYWQwNDUxMjA3YjQ1ODQ0YmI2NmViMTYxYTIwOTIxOCBNb24gU2VwIDE3IDAwOjAwOjAw
IDIwMDENCkZyb206IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KRGF0
ZTogV2VkLCAxNiBBcHIgMjAyNSAwODo1Nzo0NSArMDIwMA0KU3ViamVjdDogZHJtL2dlbTogSW50
ZXJuYWxseSB0ZXN0IGltcG9ydF9hdHRhY2ggZm9yIGltcG9ydGVkIG9iamVjdHMNCk1JTUUtVmVy
c2lvbjogMS4wDQpDb250ZW50LVR5cGU6IHRleHQvcGxhaW47IGNoYXJzZXQ9VVRGLTgNCkNvbnRl
bnQtVHJhbnNmZXItRW5jb2Rpbmc6IDhiaXQNCg0KRnJvbTogVGhvbWFzIFppbW1lcm1hbm4gPHR6
aW1tZXJtYW5uQHN1c2UuZGU+DQoNCmNvbW1pdCA4MjYwNzMxY2NhZDA0NTEyMDdiNDU4NDRiYjY2
ZWIxNjFhMjA5MjE4IHVwc3RyZWFtLg0KDQpUZXN0IHN0cnVjdCBkcm1fZ2VtX29iamVjdC5pbXBv
cnRfYXR0YWNoIHRvIGRldGVjdCBpbXBvcnRlZCBvYmplY3RzLg0KDQpEdXJpbmcgb2JqZWN0IGNs
ZW5hbnVwLCB0aGUgZG1hX2J1ZiBmaWVsZCBtaWdodCBiZSBOVUxMLiBUZXN0aW5nIGl0IGluDQph
biBvYmplY3QncyBmcmVlIGNhbGxiYWNrIHRoZW4gaW5jb3JyZWN0bHkgZG9lcyBhIGNsZWFudXAg
YXMgZm9yIG5hdGl2ZQ0Kb2JqZWN0cy4gSGFwcGVucyBmb3IgY2FsbHMgdG8gZHJtX21vZGVfZGVz
dHJveV9kdW1iX2lvY3RsKCkgdGhhdA0KY2xlYXJzIHRoZSBkbWFfYnVmIGZpZWxkIGluIGRybV9n
ZW1fb2JqZWN0X2V4cG9ydGVkX2RtYV9idWZfZnJlZSgpLg0KDQp2MzoNCi0gb25seSB0ZXN0IGZv
ciBpbXBvcnRfYXR0YWNoIChCb3JpcykNCnYyOg0KLSB1c2UgaW1wb3J0X2F0dGFjaC5kbWFidWYg
aW5zdGVhZCBvZiBkbWFfYnVmIChDaHJpc3RpYW4pDQoNClNpZ25lZC1vZmYtYnk6IFRob21hcyBa
aW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KRml4ZXM6IGI1N2FhNDdkMzllOSAoImRy
bS9nZW06IFRlc3QgZm9yIGltcG9ydGVkIEdFTSBidWZmZXJzIHdpdGggaGVscGVyIikNClJlcG9y
dGVkLWJ5OiBBbmR5IFlhbiA8YW5keXNocmtAMTYzLmNvbT4NCkNsb3NlczogaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvZHJpLWRldmVsLzM4ZDA5ZDM0LjQzNTQuMTk2Mzc5YWE1NjAuQ29yZW1haWwu
YW5keXNocmtAMTYzLmNvbS8NClRlc3RlZC1ieTogQW5keSBZYW4gPGFuZHlzaHJrQDE2My5jb20+
DQpDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQpDYzogQW51c2hh
IFNyaXZhdHNhIDxhc3JpdmF0c0ByZWRoYXQuY29tPg0KQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNo
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5s
YW5raG9yc3RAbGludXguaW50ZWwuY29tPg0KQ2M6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2Vy
bmVsLm9yZz4NCkNjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPg0KQ2M6IFNpbW9u
YSBWZXR0ZXIgPHNpbW9uYUBmZndsbC5jaD4NCkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdh
bEBsaW5hcm8ub3JnPg0KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPg0KQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBsaW51eC1t
ZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcN
ClJldmlld2VkLWJ5OiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEu
Y29tPg0KUmV2aWV3ZWQtYnk6IFNpbW9uYSBWZXR0ZXIgPHNpbW9uYS52ZXR0ZXJAZmZ3bGwuY2g+
DQpMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUwNDE2MDY1ODIwLjI2MDc2LTEt
dHppbW1lcm1hbm5Ac3VzZS5kZQ0KU2lnbmVkLW9mZi1ieTogR3JlZyBLcm9haC1IYXJ0bWFuIDxn
cmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4NCi0tLQ0KIGluY2x1ZGUvZHJtL2RybV9nZW0uaCB8
ICAgIDMgKy0tDQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygt
KQ0KDQotLS0gYS9pbmNsdWRlL2RybS9kcm1fZ2VtLmgNCisrKyBiL2luY2x1ZGUvZHJtL2RybV9n
ZW0uaA0KQEAgLTU2Nyw4ICs1NjcsNyBAQCBzdGF0aWMgaW5saW5lIGJvb2wgZHJtX2dlbV9vYmpl
Y3RfaXNfc2hhDQogICovDQogc3RhdGljIGlubGluZSBib29sIGRybV9nZW1faXNfaW1wb3J0ZWQo
Y29uc3Qgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopDQogew0KLQkvKiBUaGUgZG1hLWJ1Zidz
IHByaXYgZmllbGQgcG9pbnRzIHRvIHRoZSBvcmlnaW5hbCBHRU0gb2JqZWN0LiAqLw0KLQlyZXR1
cm4gb2JqLT5kbWFfYnVmICYmIChvYmotPmRtYV9idWYtPnByaXYgIT0gb2JqKTsNCisJcmV0dXJu
ICEhb2JqLT5pbXBvcnRfYXR0YWNoOw0KIH0NCiANCiAjaWZkZWYgQ09ORklHX0xPQ0tERVANCg0K
DQpQYXRjaGVzIGN1cnJlbnRseSBpbiBzdGFibGUtcXVldWUgd2hpY2ggbWlnaHQgYmUgZnJvbSB0
emltbWVybWFubkBzdXNlLmRlIGFyZQ0KDQpxdWV1ZS02LjYvZHJtLWdlbS1pbnRlcm5hbGx5LXRl
c3QtaW1wb3J0X2F0dGFjaC1mb3ItaW1wb3J0ZWQtb2JqZWN0cy5wYXRjaA0KcXVldWUtNi42L2Ry
bS1hc3QtZmluZC12Ymlvcy1tb2RlLWZyb20tcmVndWxhci1kaXNwbGF5LXNpemUucGF0Y2gNCnF1
ZXVlLTYuNi9kcm0tZ2VtLXRlc3QtZm9yLWltcG9ydGVkLWdlbS1idWZmZXJzLXdpdGgtaGVscGVy
LnBhdGNoDQpxdWV1ZS02LjYvZHJtLWF0b21pYy1jbGFyaWZ5LXRoZS1ydWxlcy1hcm91bmQtZHJt
X2F0b21pY19zdGF0ZS5wYXRjaA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
