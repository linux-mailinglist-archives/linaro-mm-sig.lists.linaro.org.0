Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C001A8A1FC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 16:55:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9856A45558
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 14:55:49 +0000 (UTC)
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	by lists.linaro.org (Postfix) with ESMTPS id 35F8C45558
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Apr 2025 14:55:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=uyop780x;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=rkfQoFmM;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=a+PgHyaC;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=2ZkGO1he;
	spf=pass (lists.linaro.org: domain of tzimmermann@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=tzimmermann@suse.de;
	dmarc=pass (policy=none) header.from=suse.de
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 33EAE1F747;
	Tue, 15 Apr 2025 14:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1744728932; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=cczx83oilq/PTHd3XSgxeMT61flxkAXX2ABOaB7TGqE=;
	b=uyop780xNavaucuk5uScW9eDhCcMCllF2q1Hd+YdrTM76KCczEzmka+R0BEBIyMLZt8g5n
	pCjNIRLbRdHQSoD5goSL4mVHZZ3sTcUZm6UnQqOlNj24hXkM4nkT36LzHpJUYtJSB+jQvt
	S6p5GL2W947qqBc32fUbckRb6bHXlmI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1744728932;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=cczx83oilq/PTHd3XSgxeMT61flxkAXX2ABOaB7TGqE=;
	b=rkfQoFmMFho6yY1KEJJoImoToUXF0yNoXsE44QuJdrYKg1CH7z2Qq+hZ2v4WWEyxdZ2qkP
	+PBTnS95SpYiQJBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1744728931; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=cczx83oilq/PTHd3XSgxeMT61flxkAXX2ABOaB7TGqE=;
	b=a+PgHyaCeoPaxtHrEKfX3iH0HwVy0Kjb4LTGEVD/s0yQUluVSAah4Rx9VSiM+FWlISx57R
	KI9P0pnBg+jw0PCsPyjX6scUior6FhFspgMP97/nxHosPNl/QT6cjm5WRo0/CFjIaOrWu+
	+O8Huk/TqQ53mqvf8a0y9/VRt1VmU3s=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1744728931;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=cczx83oilq/PTHd3XSgxeMT61flxkAXX2ABOaB7TGqE=;
	b=2ZkGO1heylEfLJtaKbOnoxyiYUmKceXnVBlFzBUcYcNzgryQtKpQNUhXa+Pi5DKVy+JcIA
	ZUr7aWUllfNdBjAg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id D81E2137A5;
	Tue, 15 Apr 2025 14:55:30 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id RFFnM2Jz/meAQwAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Tue, 15 Apr 2025 14:55:30 +0000
Message-ID: <28f735b7-2ecd-4f64-a71f-1364ed9d5cdf@suse.de>
Date: Tue, 15 Apr 2025 16:55:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Boris Brezillon <boris.brezillon@collabora.com>,
 maarten.lankhorst@linux.intel.com
References: <20250415140256.299550-1-tzimmermann@suse.de>
 <20250415161943.7c51c388@collabora.com>
Content-Language: en-US
From: Thomas Zimmermann <tzimmermann@suse.de>
Autocrypt: addr=tzimmermann@suse.de; keydata=
 xsBNBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAHNJ1Rob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPsLAjgQTAQgAOAIb
 AwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftODH
 AAoJEGgNwR1TC3ojx1wH/0hKGWugiqDgLNXLRD/4TfHBEKmxIrmfu9Z5t7vwUKfwhFL6hqvo
 lXPJJKQpQ2z8+X2vZm/slsLn7J1yjrOsoJhKABDi+3QWWSGkaGwRJAdPVVyJMfJRNNNIKwVb
 U6B1BkX2XDKDGffF4TxlOpSQzdtNI/9gleOoUA8+jy8knnDYzjBNOZqLG2FuTdicBXblz0Mf
 vg41gd9kCwYXDnD91rJU8tzylXv03E75NCaTxTM+FBXPmsAVYQ4GYhhgFt8S2UWMoaaABLDe
 7l5FdnLdDEcbmd8uLU2CaG4W2cLrUaI4jz2XbkcPQkqTQ3EB67hYkjiEE6Zy3ggOitiQGcqp
 j//OwE0EWznS4AEIAMYmP4M/V+T5RY5at/g7rUdNsLhWv1APYrh9RQefODYHrNRHUE9eosYb
 T6XMryR9hT8XlGOYRwKWwiQBoWSDiTMo/Xi29jUnn4BXfI2px2DTXwc22LKtLAgTRjP+qbU6
 3Y0xnQN29UGDbYgyyK51DW3H0If2a3JNsheAAK+Xc9baj0LGIc8T9uiEWHBnCH+RdhgATnWW
 GKdDegUR5BkDfDg5O/FISymJBHx2Dyoklv5g4BzkgqTqwmaYzsl8UxZKvbaxq0zbehDda8lv
 hFXodNFMAgTLJlLuDYOGLK2AwbrS3Sp0AEbkpdJBb44qVlGm5bApZouHeJ/+n+7r12+lqdsA
 EQEAAcLAdgQYAQgAIAIbDBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftOH6AAoJEGgNwR1T
 C3ojVSkIALpAPkIJPQoURPb1VWjh34l0HlglmYHvZszJWTXYwavHR8+k6Baa6H7ufXNQtThR
 yIxJrQLW6rV5lm7TjhffEhxVCn37+cg0zZ3j7zIsSS0rx/aMwi6VhFJA5hfn3T0TtrijKP4A
 SAQO9xD1Zk9/61JWk8OysuIh7MXkl0fxbRKWE93XeQBhIJHQfnc+YBLprdnxR446Sh8Wn/2D
 Ya8cavuWf2zrB6cZurs048xe0UbSW5AOSo4V9M0jzYI4nZqTmPxYyXbm30Kvmz0rYVRaitYJ
 4kyYYMhuULvrJDMjZRvaNe52tkKAvMevcGdt38H4KSVXAylqyQOW5zvPc4/sq9c=
In-Reply-To: <20250415161943.7c51c388@collabora.com>
X-Spam-Level: 
X-Spam-Score: -4.30
X-Spam-Flag: NO
X-Rspamd-Queue-Id: 35F8C45558
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.223.131/32];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[195.135.223.131:from];
	RCVD_TLS_ALL(0.00)[];
	ASN(0.00)[asn:29298, ipnet:195.135.223.0/24, country:DE];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[ffwll.ch,gmail.com,redhat.com,163.com,amd.com,kernel.org,lists.freedesktop.org,linaro.org,vger.kernel.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[195.135.223.131:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email];
	DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: KDLMPTISHCVIN6NJETXSSOVCHDTDWHRA
X-Message-ID-Hash: KDLMPTISHCVIN6NJETXSSOVCHDTDWHRA
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: simona@ffwll.ch, asrivats@redhat.com, andyshrk@163.com, christian.koenig@amd.com, mripard@kernel.org, dri-devel@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/gem: Internally test import_attach for imported objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KDLMPTISHCVIN6NJETXSSOVCHDTDWHRA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkNCg0KQW0gMTUuMDQuMjUgdW0gMTY6MTkgc2NocmllYiBCb3JpcyBCcmV6aWxsb246DQo+IE9u
IFR1ZSwgMTUgQXByIDIwMjUgMTY6MDI6MjAgKzAyMDANCj4gVGhvbWFzIFppbW1lcm1hbm4gPHR6
aW1tZXJtYW5uQHN1c2UuZGU+IHdyb3RlOg0KPg0KPj4gVGVzdCBzdHJ1Y3QgZHJtX2dlbV9vYmpl
Y3QuaW1wb3J0X2F0dGFjaC5kbWFidWYgdG8gZGV0ZWN0IGltcG9ydGVkDQo+PiBvYmplY3RzLiBX
YXJuIGlmIHRoZSBzdG9yZWQgc3RhdGUgaXMgaW5jb25zaXN0ZW50Lg0KPj4NCj4+IER1cmluZyBv
YmplY3QgY2xlbmF1cCwgdGhlIGRtYV9idWYgZmllbGQgbWlnaHQgYmUgTlVMTC4gVGVzdGluZyBp
dCBpbg0KPj4gYW4gb2JqZWN0J3MgZnJlZSBjYWxsYmFjayB0aGVuIGluY29ycmVjdGx5IGRvZXMg
YSBjbGVhbnVwIGFzIGZvciBuYXRpdmUNCj4+IG9iamVjdHMuIEhhcHBlbnMgZm9yIGNhbGxzIHRv
IGRybV9tb2RlX2Rlc3Ryb3lfZHVtYl9pb2N0bCgpIHRoYXQNCj4+IGNsZWFycyB0aGUgZG1hX2J1
ZiBmaWVsZCBpbiBkcm1fZ2VtX29iamVjdF9leHBvcnRlZF9kbWFfYnVmX2ZyZWUoKS4NCj4+DQo+
PiB2MjoNCj4+IC0gdXNlIGltcG9ydF9hdHRhY2guZG1hYnVmIGluc3RlYWQgb2YgZG1hX2J1ZiAo
Q2hyaXN0aWFuKQ0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emlt
bWVybWFubkBzdXNlLmRlPg0KPj4gRml4ZXM6IGI1N2FhNDdkMzllOSAoImRybS9nZW06IFRlc3Qg
Zm9yIGltcG9ydGVkIEdFTSBidWZmZXJzIHdpdGggaGVscGVyIikNCj4+IFJlcG9ydGVkLWJ5OiBB
bmR5IFlhbiA8YW5keXNocmtAMTYzLmNvbT4NCj4+IENsb3NlczogaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvZHJpLWRldmVsLzM4ZDA5ZDM0LjQzNTQuMTk2Mzc5YWE1NjAuQ29yZW1haWwuYW5keXNo
cmtAMTYzLmNvbS8NCj4+IFRlc3RlZC1ieTogQW5keSBZYW4gPGFuZHlzaHJrQDE2My5jb20+DQo+
PiBDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQo+PiBDYzogQW51
c2hhIFNyaXZhdHNhIDxhc3JpdmF0c0ByZWRoYXQuY29tPg0KPj4gQ2M6IENocmlzdGlhbiBLw7Zu
aWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+IENjOiBNYWFydGVuIExhbmtob3JzdCA8
bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPg0KPj4gQ2M6IE1heGltZSBSaXBhcmQg
PG1yaXBhcmRAa2VybmVsLm9yZz4NCj4+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAZ21haWwu
Y29tPg0KPj4gQ2M6IFNpbW9uYSBWZXR0ZXIgPHNpbW9uYUBmZndsbC5jaD4NCj4+IENjOiBTdW1p
dCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KPj4gQ2M6ICJDaHJpc3RpYW4gS8O2
bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCj4+IENj
OiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCj4+IC0tLQ0KPj4gICBpbmNsdWRlL2Ry
bS9kcm1fZ2VtLmggfCAyNiArKysrKysrKysrKysrKysrKysrKysrKystLQ0KPj4gICAxIGZpbGUg
Y2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9kcm0vZHJtX2dlbS5oIGIvaW5jbHVkZS9kcm0vZHJtX2dlbS5oDQo+PiBp
bmRleCA5YjcxZjdhOWYzZjguLjQ2NGI5YzdmZWVjMCAxMDA2NDQNCj4+IC0tLSBhL2luY2x1ZGUv
ZHJtL2RybV9nZW0uaA0KPj4gKysrIGIvaW5jbHVkZS9kcm0vZHJtX2dlbS5oDQo+PiBAQCAtNTc5
LDYgKzU3OSwyMSBAQCBzdGF0aWMgaW5saW5lIGJvb2wgZHJtX2dlbV9vYmplY3RfaXNfc2hhcmVk
X2Zvcl9tZW1vcnlfc3RhdHMoc3RydWN0IGRybV9nZW1fb2JqZQ0KPj4gICAJcmV0dXJuIChvYmot
PmhhbmRsZV9jb3VudCA+IDEpIHx8IG9iai0+ZG1hX2J1ZjsNCj4+ICAgfQ0KPj4gICANCj4+ICsv
KioNCj4+ICsgKiBkcm1fZ2VtX293bnNfZG1hX2J1ZigpIC0gVGVzdHMgaWYgR0VNIG9iamVjdCBi
YWNrcyBhIERNQS1idWZmZXIgb2JqZWN0DQo+PiArICogQG9iajogdGhlIEdFTSBvYmplY3QNCj4+
ICsgKiBAb2JqOiB0aGUgRE1BIGJ1ZmZlcg0KPj4gKyAqDQo+PiArICogUmV0dXJuczoNCj4+ICsg
KiBUcnVlIGlmIHRoZSBETUEgYnVmZmVyIHJlZmVycyB0byB0aGUgR0VNIG9iamVjdCdzIGJ1ZmZl
ci4NCj4+ICsgKi8NCj4+ICtzdGF0aWMgaW5saW5lIGJvb2wgZHJtX2dlbV9vd25zX2RtYV9idWYo
Y29uc3Qgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosDQo+PiArCQkJCQljb25zdCBzdHJ1Y3Qg
ZG1hX2J1ZiAqZG1hX2J1ZikNCj4+ICt7DQo+PiArCS8qIFRoZSBkbWEtYnVmJ3MgcHJpdiBmaWVs
ZCBwb2ludHMgdG8gdGhlIG9yaWdpbmFsIEdFTSBvYmplY3QuICovDQo+PiArCXJldHVybiBkbWFf
YnVmLT5wcml2ID09IG9iajsNCj4+ICt9DQo+PiArDQo+PiAgIC8qKg0KPj4gICAgKiBkcm1fZ2Vt
X2lzX2ltcG9ydGVkKCkgLSBUZXN0cyBpZiBHRU0gb2JqZWN0J3MgYnVmZmVyIGhhcyBiZWVuIGlt
cG9ydGVkDQo+PiAgICAqIEBvYmo6IHRoZSBHRU0gb2JqZWN0DQo+PiBAQCAtNTg4LDggKzYwMywx
NSBAQCBzdGF0aWMgaW5saW5lIGJvb2wgZHJtX2dlbV9vYmplY3RfaXNfc2hhcmVkX2Zvcl9tZW1v
cnlfc3RhdHMoc3RydWN0IGRybV9nZW1fb2JqZQ0KPj4gICAgKi8NCj4+ICAgc3RhdGljIGlubGlu
ZSBib29sIGRybV9nZW1faXNfaW1wb3J0ZWQoY29uc3Qgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpv
YmopDQo+PiAgIHsNCj4+IC0JLyogVGhlIGRtYS1idWYncyBwcml2IGZpZWxkIHBvaW50cyB0byB0
aGUgb3JpZ2luYWwgR0VNIG9iamVjdC4gKi8NCj4+IC0JcmV0dXJuIG9iai0+ZG1hX2J1ZiAmJiAo
b2JqLT5kbWFfYnVmLT5wcml2ICE9IG9iaik7DQo+PiArCWNvbnN0IHN0cnVjdCBkbWFfYnVmICpk
bWFfYnVmID0gTlVMTDsNCj4+ICsNCj4+ICsJaWYgKCFvYmotPmltcG9ydF9hdHRhY2gpDQo+PiAr
CQlyZXR1cm4gZmFsc2U7DQo+PiArDQo+PiArCWRtYV9idWYgPSBvYmotPmltcG9ydF9hdHRhY2gt
PmRtYWJ1ZjsNCj4+ICsNCj4+ICsJLyogV2FybiBpZiB3ZSBzb21laG93IHJlaW1wb3J0ZWQgb3Vy
IG93biBidWZmZXIuICovDQo+PiArCXJldHVybiAhZHJtX1dBUk5fT05fT05DRShvYmotPmRldiwg
IWRtYV9idWYgfHwgZHJtX2dlbV9vd25zX2RtYV9idWYob2JqLCBkbWFfYnVmKSk7DQo+IEknbSBo
b25lc3RseSBub3Qgc3VyZSBJIHNlZSB0aGUgcG9pbnQgb2YgY2hlY2tpbmcNCj4gb2JqLT5pbXBv
cnRfYXR0YWNoLT5kbWFidWYuIElmIG9iai0+aW1wb3J0X2F0dGFjaCAhPSBOVUxMLCB3ZSdyZSBz
dXJlDQo+IGl0J3MgYSBmb3JlaWduIGJ1ZmZlciBhbHJlYWR5LCBvdGhlcndpc2Ugd2Ugd291bGQg
Z2V0IHRoZSBvcmlnaW5hbCBHRU0NCj4gb2JqZWN0IHdoaWNoIGhhcyAtPmltcG9ydF9hdHRhY2g9
TlVMTC4gU28gd2h5IG5vdCBnbyBmb3IgYSBzaW1wbGUNCj4NCj4gCXJldHVybiBvYmotPmltcG9y
dF9hdHRhY2ggIT0gTlVMTDsNCj4NCj4gY2hlY2ssIGFuZCBleHRlbmQgdGhlIGNoZWNrIHdoZW4g
eW91IGdldCB0byBpbXBsZW1lbnQgaW1wb3J0cyB3aXRob3V0DQo+IGltcG9ydCBhdHRhY2htZW50
cyAobm90IHN1cmUgd2hhdCB0aG9zZSB3b3VsZCBsb29rIGxpa2UgQlRXKS4NCg0KSSBoYXZlIG5v
IHN0cm9uZyBvcGluaW9uLiBJIGp1c3QgZm91bmQgaXQgY29uZnVzaW5nIHRvIHJlbHkgb24gDQpp
bXBvcnRfYXR0YWNoIHdoZW4gdGhlIGRtYV9idWYgaXMgd2hhdCB3ZSBvcmlnaW5hbGx5IGltcG9y
dGVkLg0KDQpCZXN0IHJlZ2FyZHMNClRob21hcw0KDQoNCi0tIA0KLS0NClRob21hcyBaaW1tZXJt
YW5uDQpHcmFwaGljcyBEcml2ZXIgRGV2ZWxvcGVyDQpTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBH
ZXJtYW55IEdtYkgNCkZyYW5rZW5zdHJhc3NlIDE0NiwgOTA0NjEgTnVlcm5iZXJnLCBHZXJtYW55
DQpHRjogSXZvIFRvdGV2LCBBbmRyZXcgTXllcnMsIEFuZHJldyBNY0RvbmFsZCwgQm91ZGllbiBN
b2VybWFuDQpIUkIgMzY4MDkgKEFHIE51ZXJuYmVyZykNCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
