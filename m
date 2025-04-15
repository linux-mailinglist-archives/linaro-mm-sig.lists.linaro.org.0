Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 575BAA8A09F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 16:06:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 61C0A459CC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 14:06:48 +0000 (UTC)
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	by lists.linaro.org (Postfix) with ESMTPS id E5D4443B8C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Apr 2025 14:06:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b="fAuP/uqC";
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=BU6c6Ubx;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=H7gbCJ+V;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=5SsZL6pq;
	spf=pass (lists.linaro.org: domain of tzimmermann@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=tzimmermann@suse.de;
	dmarc=pass (policy=none) header.from=suse.de
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id DAF3C1F38A;
	Tue, 15 Apr 2025 14:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1744725991; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=jiZileAmCpzc0/USvSNYQ0e5z2UcSzk1rG28zMxxz2w=;
	b=fAuP/uqCwYRn+k0f0fQLuxSV04UEkPG1i/ry/zJrNhkmdJWDQEHCdt0WebgYg3/EzEErPY
	YnY9ZvaHY0afl4nd3cFH15mSg9tu6aD+fokyUX+JsfIPqQ5Vmj5bhMHvxkGp2MRdlcWkYC
	Z6zG6SEjk6hLEkrkKUUQ59oeeakbM/E=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1744725991;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=jiZileAmCpzc0/USvSNYQ0e5z2UcSzk1rG28zMxxz2w=;
	b=BU6c6UbxMJO04tLPJ+9WNy1/n9sO+GfbLEBZkwarKnuN71CakbllbBEyhMT03CqIE2o88V
	cLVn9/Jk6OhA0cDg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1744725990; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=jiZileAmCpzc0/USvSNYQ0e5z2UcSzk1rG28zMxxz2w=;
	b=H7gbCJ+VcQML1QO6G0NxUAYf7nhy2nnB6AbLssfIIuikUJhaVMBDnIweWK+mlQXXeuMQtk
	kT/Pk4QnB4VqRoq1iRBcNsJL7qkw6Zy+XWdDbGXHphCPK15erNzybD4Zy75w7N9PfNoqKQ
	Cpa8cfL3PxSQWnDxr+7qENTsRWcwH8U=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1744725990;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=jiZileAmCpzc0/USvSNYQ0e5z2UcSzk1rG28zMxxz2w=;
	b=5SsZL6pqcsStaZvbrS7+VvC3d+89r9IlGMxYXbTIy5HRyKAOkaQem5cnhdCoxBTbQJg8DO
	vOucglOELAxpYnBw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 856CA139A1;
	Tue, 15 Apr 2025 14:06:30 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id gFVbH+Zn/mcMNAAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Tue, 15 Apr 2025 14:06:30 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: simona@ffwll.ch,
	airlied@gmail.com,
	asrivats@redhat.com,
	andyshrk@163.com,
	christian.koenig@amd.com,
	boris.brezillon@collabora.com,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com
Date: Tue, 15 Apr 2025 16:02:20 +0200
Message-ID: <20250415140256.299550-1-tzimmermann@suse.de>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-Spam-Level: 
X-Spam-Score: -3.30
X-Spam-Flag: NO
X-Rspamd-Queue-Id: E5D4443B8C
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.223.131/32];
	RCVD_IN_DNSWL_MED(-0.20)[195.135.223.131:from];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:29298, ipnet:195.135.223.0/24, country:DE];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[ffwll.ch,gmail.com,redhat.com,163.com,amd.com,collabora.com,kernel.org,linux.intel.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email,lists.freedesktop.org:email,suse.de:dkim,suse.de:mid,suse.de:email,intel.com:email];
	DNSWL_BLOCKED(0.00)[2a07:de40:b281:106:10:150:64:167:received];
	DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: JW75UDGS6NPNI3X2JQZ33J5VESP33YVC
X-Message-ID-Hash: JW75UDGS6NPNI3X2JQZ33J5VESP33YVC
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] drm/gem: Internally test import_attach for imported objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JW75UDGS6NPNI3X2JQZ33J5VESP33YVC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGVzdCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QuaW1wb3J0X2F0dGFjaC5kbWFidWYgdG8gZGV0ZWN0
IGltcG9ydGVkDQpvYmplY3RzLiBXYXJuIGlmIHRoZSBzdG9yZWQgc3RhdGUgaXMgaW5jb25zaXN0
ZW50Lg0KDQpEdXJpbmcgb2JqZWN0IGNsZW5hdXAsIHRoZSBkbWFfYnVmIGZpZWxkIG1pZ2h0IGJl
IE5VTEwuIFRlc3RpbmcgaXQgaW4NCmFuIG9iamVjdCdzIGZyZWUgY2FsbGJhY2sgdGhlbiBpbmNv
cnJlY3RseSBkb2VzIGEgY2xlYW51cCBhcyBmb3IgbmF0aXZlDQpvYmplY3RzLiBIYXBwZW5zIGZv
ciBjYWxscyB0byBkcm1fbW9kZV9kZXN0cm95X2R1bWJfaW9jdGwoKSB0aGF0DQpjbGVhcnMgdGhl
IGRtYV9idWYgZmllbGQgaW4gZHJtX2dlbV9vYmplY3RfZXhwb3J0ZWRfZG1hX2J1Zl9mcmVlKCku
DQoNCnYyOg0KLSB1c2UgaW1wb3J0X2F0dGFjaC5kbWFidWYgaW5zdGVhZCBvZiBkbWFfYnVmIChD
aHJpc3RpYW4pDQoNClNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFu
bkBzdXNlLmRlPg0KRml4ZXM6IGI1N2FhNDdkMzllOSAoImRybS9nZW06IFRlc3QgZm9yIGltcG9y
dGVkIEdFTSBidWZmZXJzIHdpdGggaGVscGVyIikNClJlcG9ydGVkLWJ5OiBBbmR5IFlhbiA8YW5k
eXNocmtAMTYzLmNvbT4NCkNsb3NlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVs
LzM4ZDA5ZDM0LjQzNTQuMTk2Mzc5YWE1NjAuQ29yZW1haWwuYW5keXNocmtAMTYzLmNvbS8NClRl
c3RlZC1ieTogQW5keSBZYW4gPGFuZHlzaHJrQDE2My5jb20+DQpDYzogVGhvbWFzIFppbW1lcm1h
bm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQpDYzogQW51c2hhIFNyaXZhdHNhIDxhc3JpdmF0c0By
ZWRoYXQuY29tPg0KQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bT4NCkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwu
Y29tPg0KQ2M6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4NCkNjOiBEYXZpZCBB
aXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPg0KQ2M6IFNpbW9uYSBWZXR0ZXIgPHNpbW9uYUBmZnds
bC5jaD4NCkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KQ2M6ICJD
aHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ2M6IGRyaS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcN
CkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCi0tLQ0KIGluY2x1ZGUvZHJtL2Ry
bV9nZW0uaCB8IDI2ICsrKysrKysrKysrKysrKysrKysrKysrKy0tDQogMSBmaWxlIGNoYW5nZWQs
IDI0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9pbmNsdWRl
L2RybS9kcm1fZ2VtLmggYi9pbmNsdWRlL2RybS9kcm1fZ2VtLmgNCmluZGV4IDliNzFmN2E5ZjNm
OC4uNDY0YjljN2ZlZWMwIDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2dlbS5oDQorKysg
Yi9pbmNsdWRlL2RybS9kcm1fZ2VtLmgNCkBAIC01NzksNiArNTc5LDIxIEBAIHN0YXRpYyBpbmxp
bmUgYm9vbCBkcm1fZ2VtX29iamVjdF9pc19zaGFyZWRfZm9yX21lbW9yeV9zdGF0cyhzdHJ1Y3Qg
ZHJtX2dlbV9vYmplDQogCXJldHVybiAob2JqLT5oYW5kbGVfY291bnQgPiAxKSB8fCBvYmotPmRt
YV9idWY7DQogfQ0KIA0KKy8qKg0KKyAqIGRybV9nZW1fb3duc19kbWFfYnVmKCkgLSBUZXN0cyBp
ZiBHRU0gb2JqZWN0IGJhY2tzIGEgRE1BLWJ1ZmZlciBvYmplY3QNCisgKiBAb2JqOiB0aGUgR0VN
IG9iamVjdA0KKyAqIEBvYmo6IHRoZSBETUEgYnVmZmVyDQorICoNCisgKiBSZXR1cm5zOg0KKyAq
IFRydWUgaWYgdGhlIERNQSBidWZmZXIgcmVmZXJzIHRvIHRoZSBHRU0gb2JqZWN0J3MgYnVmZmVy
Lg0KKyAqLw0KK3N0YXRpYyBpbmxpbmUgYm9vbCBkcm1fZ2VtX293bnNfZG1hX2J1Zihjb25zdCBz
dHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwNCisJCQkJCWNvbnN0IHN0cnVjdCBkbWFfYnVmICpk
bWFfYnVmKQ0KK3sNCisJLyogVGhlIGRtYS1idWYncyBwcml2IGZpZWxkIHBvaW50cyB0byB0aGUg
b3JpZ2luYWwgR0VNIG9iamVjdC4gKi8NCisJcmV0dXJuIGRtYV9idWYtPnByaXYgPT0gb2JqOw0K
K30NCisNCiAvKioNCiAgKiBkcm1fZ2VtX2lzX2ltcG9ydGVkKCkgLSBUZXN0cyBpZiBHRU0gb2Jq
ZWN0J3MgYnVmZmVyIGhhcyBiZWVuIGltcG9ydGVkDQogICogQG9iajogdGhlIEdFTSBvYmplY3QN
CkBAIC01ODgsOCArNjAzLDE1IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBkcm1fZ2VtX29iamVjdF9p
c19zaGFyZWRfZm9yX21lbW9yeV9zdGF0cyhzdHJ1Y3QgZHJtX2dlbV9vYmplDQogICovDQogc3Rh
dGljIGlubGluZSBib29sIGRybV9nZW1faXNfaW1wb3J0ZWQoY29uc3Qgc3RydWN0IGRybV9nZW1f
b2JqZWN0ICpvYmopDQogew0KLQkvKiBUaGUgZG1hLWJ1ZidzIHByaXYgZmllbGQgcG9pbnRzIHRv
IHRoZSBvcmlnaW5hbCBHRU0gb2JqZWN0LiAqLw0KLQlyZXR1cm4gb2JqLT5kbWFfYnVmICYmIChv
YmotPmRtYV9idWYtPnByaXYgIT0gb2JqKTsNCisJY29uc3Qgc3RydWN0IGRtYV9idWYgKmRtYV9i
dWYgPSBOVUxMOw0KKw0KKwlpZiAoIW9iai0+aW1wb3J0X2F0dGFjaCkNCisJCXJldHVybiBmYWxz
ZTsNCisNCisJZG1hX2J1ZiA9IG9iai0+aW1wb3J0X2F0dGFjaC0+ZG1hYnVmOw0KKw0KKwkvKiBX
YXJuIGlmIHdlIHNvbWVob3cgcmVpbXBvcnRlZCBvdXIgb3duIGJ1ZmZlci4gKi8NCisJcmV0dXJu
ICFkcm1fV0FSTl9PTl9PTkNFKG9iai0+ZGV2LCAhZG1hX2J1ZiB8fCBkcm1fZ2VtX293bnNfZG1h
X2J1ZihvYmosIGRtYV9idWYpKTsNCiB9DQogDQogI2lmZGVmIENPTkZJR19MT0NLREVQDQotLSAN
CjIuNDkuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
