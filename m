Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0FDB25D9B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 Aug 2025 09:38:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 815EE44A5F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 Aug 2025 07:38:10 +0000 (UTC)
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	by lists.linaro.org (Postfix) with ESMTPS id 03D3542537
	for <linaro-mm-sig@lists.linaro.org>; Thu, 14 Aug 2025 07:37:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=xsDGl5TW;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=RrhR5OAg;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=2FH1at0u;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=gkp2E0Y6;
	spf=pass (lists.linaro.org: domain of tzimmermann@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=tzimmermann@suse.de;
	dmarc=pass (policy=none) header.from=suse.de
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id C969C21ABE;
	Thu, 14 Aug 2025 07:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1755157076; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=RI1dCO7X86AGd1N6BFTrqVf06Ye+7aZi9kRrQeTTn2U=;
	b=xsDGl5TW6eZsKFnFi9+Tv8+u+Q28neFLAnDZii9NvDKcZp9SnYA0rYWmgkodRfyOWk7682
	NQIvOs8Z4GDd3XlxLRnNjj3zyw1rFK9K4bs2yVdLfv+/8d8HtIikOQcNq8wGoQ3C4AetvZ
	9ZpPnhov5dwXYcXSc060wQHvg0yo858=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1755157076;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=RI1dCO7X86AGd1N6BFTrqVf06Ye+7aZi9kRrQeTTn2U=;
	b=RrhR5OAgYVoHcppnCMpYGhgtdWXZm6F8wyhS3thhCSaptuWE1wEz98QgMcUB1vGgZ+yqWm
	2QYwkkfqEthle/Bg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1755157075; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=RI1dCO7X86AGd1N6BFTrqVf06Ye+7aZi9kRrQeTTn2U=;
	b=2FH1at0uaXWmpAxONgdOUy4p0TaJpc+1kXZegVnlxOsIVB/Jy6JshKNDeTy62WvLAUBCuT
	SMcEKsOa/85d5zKnCVCgSXY2+0bkdGQJl6Q1WDp2I5jRBcVQqcEhKquiydtldNMmDYcrLx
	hFFmxepiJka+Jm2F5BhKOnMkMnk2ImE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1755157075;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=RI1dCO7X86AGd1N6BFTrqVf06Ye+7aZi9kRrQeTTn2U=;
	b=gkp2E0Y6a+M0R2OtYitvuT/2iOiW1mhQaeN/YH8nxVZ9fv4hhxYR1XEkIhPLiSqBKQwy8a
	NOlbwDU3gkUhVDAg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 7834A136AE;
	Thu, 14 Aug 2025 07:37:55 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id 0HMnHFOSnWhiAQAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Thu, 14 Aug 2025 07:37:55 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: sumit.semwal@linaro.org,
	christian.koenig@amd.com,
	oushixiong@kylinos.cn,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	airlied@gmail.com,
	simona@ffwll.ch
Date: Thu, 14 Aug 2025 09:34:30 +0200
Message-ID: <20250814073507.18587-1-tzimmermann@suse.de>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-Spam-Flag: NO
X-Spam-Level: 
X-Spam-Score: -3.51
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.223.130/32];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:29298, ipnet:195.135.223.0/24, country:DE];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,kylinos.cn,linux.intel.com,kernel.org,gmail.com,ffwll.ch];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 03D3542537
X-Spamd-Bar: ---
Message-ID-Hash: 26F6DAGPCH73QNHE7A3UXDBVM5CN6T4K
X-Message-ID-Hash: 26F6DAGPCH73QNHE7A3UXDBVM5CN6T4K
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/gem-shmem: Pin and unpin buffers when importing w/o S/G table
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/26F6DAGPCH73QNHE7A3UXDBVM5CN6T4K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SW1wb3J0ZWQgZG1hLWJ1ZiBvYmplY3RzIG5lZWQgdG8gYmUgcGlubmVkIHdoaWxlIGJlaW5nIHZt
YXAnZWQgaW50bw0Ka2VybmVsIGFkZHJlc3Mgc3BhY2UuIFRoaXMgdXNlZCB0byBiZSBkb25lIGJl
Zm9yZSB3aGlsZSBjcmVhdGluZyBhbg0KUy9HIHRhYmxlLg0KDQpHRU0tU0hNRU4gY2FuIGltcG9y
dCBkbWEtYnVmIG9iamVjdHMgd2l0aG91dCBjcmVhdGluZyB0aGUgUy9HIHRhYmxlLA0KYnV0IHRo
ZSBwaW4vdW5waW4gaXMgbm93IG1pc3NpbmcuIExlYWRzIHRvIHBhZ2UtbWFwcGluZyBlcnJvcnMg
c3VjaA0KYXMgdGhlIG9uZSBzaG93biBiZWxvdy4NCg0KWyAgMTAyLjEwMTcyNl0gQlVHOiB1bmFi
bGUgdG8gaGFuZGxlIHBhZ2UgZmF1bHQgZm9yIGFkZHJlc3M6IGZmZmZjOTAxMjcwMDAwMDANClsu
Li5dDQpbICAxMDIuMTU3MTAyXSBSSVA6IDAwMTA6dWRsX2NvbXByZXNzX2hsaW5lMTYrMHgyMTkv
MHg5NDAgW3VkbF0NClsuLi5dDQpbICAxMDIuMjQzMjUwXSBDYWxsIFRyYWNlOg0KWyAgMTAyLjI0
NTY5NV0gIDxUQVNLPg0KWyAgMTAyLjI0NzdWOTVdICA/IHZhbGlkYXRlX2NoYWluKzB4MjRlLzB4
NWUwDQpbICAxMDIuMjUxODA1XSAgPyBfX2xvY2tfYWNxdWlyZSsweDU2OC8weGFlMA0KWyAgMTAy
LjI1NTgwN10gIHVkbF9yZW5kZXJfaGxpbmUrMHgxNjUvMHgzNDEgW3VkbF0NClsgIDEwMi4yNjAz
MzhdICA/IF9fcGZ4X3VkbF9yZW5kZXJfaGxpbmUrMHgxMC8weDEwIFt1ZGxdDQpbICAxMDIuMjY1
Mzc5XSAgPyBsb2NhbF9jbG9ja19ub2luc3RyKzB4Yi8weDEwMA0KWyAgMTAyLjI2OTY0Ml0gID8g
X19sb2NrX3JlbGVhc2UuaXNyYS4wKzB4MTZjLzB4MmUwDQpbICAxMDIuMjc0MjQ2XSAgPyBtYXJr
X2hlbGRfbG9ja3MrMHg0MC8weDcwDQpbICAxMDIuMjc4MTc3XSAgdWRsX3ByaW1hcnlfcGxhbmVf
aGVscGVyX2F0b21pY191cGRhdGUrMHg0M2UvMHg2ODAgW3VkbF0NClsgIDEwMi4yODQ2MDZdICA/
IF9fcGZ4X3VkbF9wcmltYXJ5X3BsYW5lX2hlbHBlcl9hdG9taWNfdXBkYXRlKzB4MTAvMHgxMCBb
dWRsXQ0KWyAgMTAyLjI5MTU1MV0gID8gbG9ja2RlcF9oYXJkaXJxc19vbl9wcmVwYXJlLnBhcnQu
MCsweDkyLzB4MTcwDQpbICAxMDIuMjk3MjA4XSAgPyBsb2NrZGVwX2hhcmRpcnFzX29uKzB4ODgv
MHgxMzANClsgIDEwMi4zMDE1NTRdICA/IF9yYXdfc3Bpbl91bmxvY2tfaXJxKzB4MjQvMHg1MA0K
WyAgMTAyLjMwNTkwMV0gID8gd2FpdF9mb3JfY29tcGxldGlvbl90aW1lb3V0KzB4MmJiLzB4M2Ew
DQpbICAxMDIuMzExMDI4XSAgPyBkcm1fYXRvbWljX2hlbHBlcl9jYWxjX3RpbWVzdGFtcGluZ19j
b25zdGFudHMrMHgxNDEvMHgyMDANClsgIDEwMi4zMTc3MTRdICA/IGRybV9hdG9taWNfaGVscGVy
X2NvbW1pdF9wbGFuZXMrMHgzYjYvMHgxMDMwDQpbICAxMDIuMzIzMjc5XSAgZHJtX2F0b21pY19o
ZWxwZXJfY29tbWl0X3BsYW5lcysweDNiNi8weDEwMzANClsgIDEwMi4zMjg2NjRdICBkcm1fYXRv
bWljX2hlbHBlcl9jb21taXRfdGFpbCsweDQxLzB4YjANClsgIDEwMi4zMzM2MjJdICBjb21taXRf
dGFpbCsweDIwNC8weDMzMA0KWy4uLl0NClsgIDEwMi41Mjk5NDZdIC0tLVsgZW5kIHRyYWNlIDAw
MDAwMDAwMDAwMDAwMDAgXS0tLQ0KWyAgMTAyLjY1MTk4MF0gUklQOiAwMDEwOnVkbF9jb21wcmVz
c19obGluZTE2KzB4MjE5LzB4OTQwIFt1ZGxdDQoNClN1cHBvcnQgcGluL3VucGluIGluIGRybV9i
dWZfbWFwX2F0dGFjaG1lbnQoKSB3aXRob3V0IGNyZWF0aW5nIGFuIFMvRw0KdGFibGUuIFBhc3Np
bmcgRE1BX05PTkUgZm9yIHRoZSBETUEgZGlyZWN0aW9uIHdpbGwgb25seSBwaW4uIERvIHRoZQ0K
aW52ZXJzZSBmb3IgdW5tYXBfYXR0YWNobWVudCgpLiBNb2RpZnkgR0VNLVNITUVNIGFjY29yZGlu
Z2x5LCBzbyB0aGF0DQppdCBwaW5zIHRoZSBpbXBvcnRlZCBkbWEtYnVmLg0KDQpTaWduZWQtb2Zm
LWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4NCkZpeGVzOiA2NjBj
ZDQ0NjU5YTAgKCJkcm0vc2htZW0taGVscGVyOiBJbXBvcnQgZG1hYnVmIHdpdGhvdXQgbWFwcGlu
ZyBpdHMgc2dfdGFibGUiKQ0KUmVwb3J0ZWQtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVy
bWFubkBzdXNlLmRlPg0KQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwv
YmExYmRmYjgtZGJmNy00MzcyLWJkY2ItZGY3ZTA1MTFjNzAyQHN1c2UuZGUvDQpDYzogU2hpeGlv
bmcgT3UgPG91c2hpeGlvbmdAa3lsaW5vcy5jbj4NCkNjOiBUaG9tYXMgWmltbWVybWFubiA8dHpp
bW1lcm1hbm5Ac3VzZS5kZT4NCkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9y
c3RAbGludXguaW50ZWwuY29tPg0KQ2M6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9y
Zz4NCkNjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPg0KQ2M6IFNpbW9uYSBWZXR0
ZXIgPHNpbW9uYUBmZndsbC5jaD4NCkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5h
cm8ub3JnPg0KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pg0KQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBsaW51eC1tZWRpYUB2
Z2VyLmtlcm5lbC5vcmcNCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCi0tLQ0K
IGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAgICAgICAgIHwgMTYgKysrKysrKysrKysr
Ky0tLQ0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jIHwgMTEgKysrKysr
KysrKy0NCiBkcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMgICAgICAgICAgICB8ICAyICsrDQog
MyBmaWxlcyBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KDQpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMNCmluZGV4IDJiY2Y5Y2VjYTk5Ny4uZjFlMTM4NWNlNjMwIDEwMDY0NA0KLS0tIGEvZHJp
dmVycy9kbWEtYnVmL2RtYS1idWYuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0K
QEAgLTEwODYsNyArMTA4Niw4IEBAIEVYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9idWZfdW5waW4s
ICJETUFfQlVGIik7DQogICogQGRpcmVjdGlvbjoJW2luXQlkaXJlY3Rpb24gb2YgRE1BIHRyYW5z
ZmVyDQogICoNCiAgKiBSZXR1cm5zIHNnX3RhYmxlIGNvbnRhaW5pbmcgdGhlIHNjYXR0ZXJsaXN0
IHRvIGJlIHJldHVybmVkOyByZXR1cm5zIEVSUl9QVFINCi0gKiBvbiBlcnJvci4gTWF5IHJldHVy
biAtRUlOVFIgaWYgaXQgaXMgaW50ZXJydXB0ZWQgYnkgYSBzaWduYWwuDQorICogb24gZXJyb3Iu
IE1heSByZXR1cm4gLUVJTlRSIGlmIGl0IGlzIGludGVycnVwdGVkIGJ5IGEgc2lnbmFsLiBSZXR1
cm5zIE5VTEwNCisgKiBvbiBzdWNjZXNzIGlmZiBkaXJlY3Rpb24gaXMgRE1BX05PTkUuDQogICoN
CiAgKiBPbiBzdWNjZXNzLCB0aGUgRE1BIGFkZHJlc3NlcyBhbmQgbGVuZ3RocyBpbiB0aGUgcmV0
dXJuZWQgc2NhdHRlcmxpc3QgYXJlDQogICogUEFHRV9TSVpFIGFsaWduZWQuDQpAQCAtMTEyMiw2
ICsxMTIzLDggQEAgc3RydWN0IHNnX3RhYmxlICpkbWFfYnVmX21hcF9hdHRhY2htZW50KHN0cnVj
dCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwNCiAJCWlmIChyZXQpDQogCQkJcmV0dXJuIEVS
Ul9QVFIocmV0KTsNCiAJfQ0KKwlpZiAoIXZhbGlkX2RtYV9kaXJlY3Rpb24oZGlyZWN0aW9uKSkN
CisJCXJldHVybiBOVUxMOyAvKiBvbmx5IHBpbjsgZG9uJ3QgbWFwICovDQogDQogCXNnX3RhYmxl
ID0gYXR0YWNoLT5kbWFidWYtPm9wcy0+bWFwX2RtYV9idWYoYXR0YWNoLCBkaXJlY3Rpb24pOw0K
IAlpZiAoIXNnX3RhYmxlKQ0KQEAgLTEyMTYsMTQgKzEyMTksMjEgQEAgdm9pZCBkbWFfYnVmX3Vu
bWFwX2F0dGFjaG1lbnQoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KIHsNCiAJ
bWlnaHRfc2xlZXAoKTsNCiANCi0JaWYgKFdBUk5fT04oIWF0dGFjaCB8fCAhYXR0YWNoLT5kbWFi
dWYgfHwgIXNnX3RhYmxlKSkNCisJaWYgKFdBUk5fT04oIWF0dGFjaCB8fCAhYXR0YWNoLT5kbWFi
dWYpKQ0KIAkJcmV0dXJuOw0KIA0KIAlkbWFfcmVzdl9hc3NlcnRfaGVsZChhdHRhY2gtPmRtYWJ1
Zi0+cmVzdik7DQogDQorCWlmICghdmFsaWRfZG1hX2RpcmVjdGlvbihkaXJlY3Rpb24pKQ0KKwkJ
Z290byB1bnBpbjsNCisNCisJaWYgKFdBUk5fT04oIXNnX3RhYmxlKSkNCisJCXJldHVybjsNCisN
CiAJbWFuZ2xlX3NnX3RhYmxlKHNnX3RhYmxlKTsNCiAJYXR0YWNoLT5kbWFidWYtPm9wcy0+dW5t
YXBfZG1hX2J1ZihhdHRhY2gsIHNnX3RhYmxlLCBkaXJlY3Rpb24pOw0KIA0KK3VucGluOg0KIAlp
ZiAoZG1hX2J1Zl9waW5fb25fbWFwKGF0dGFjaCkpDQogCQlhdHRhY2gtPmRtYWJ1Zi0+b3BzLT51
bnBpbihhdHRhY2gpOw0KIH0NCkBAIC0xMjQ1LDcgKzEyNTUsNyBAQCB2b2lkIGRtYV9idWZfdW5t
YXBfYXR0YWNobWVudF91bmxvY2tlZChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gs
DQogew0KIAltaWdodF9zbGVlcCgpOw0KIA0KLQlpZiAoV0FSTl9PTighYXR0YWNoIHx8ICFhdHRh
Y2gtPmRtYWJ1ZiB8fCAhc2dfdGFibGUpKQ0KKwlpZiAoV0FSTl9PTighYXR0YWNoIHx8ICFhdHRh
Y2gtPmRtYWJ1ZikpDQogCQlyZXR1cm47DQogDQogCWRtYV9yZXN2X2xvY2soYXR0YWNoLT5kbWFi
dWYtPnJlc3YsIE5VTEwpOw0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3No
bWVtX2hlbHBlci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMNCmlu
ZGV4IDVkMTM0OWMzNGFmZC4uMWI2NjUwMTQyMGQzIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2Vt
X3NobWVtX2hlbHBlci5jDQpAQCAtODE3LDYgKzgxNyw3IEBAIHN0cnVjdCBkcm1fZ2VtX29iamVj
dCAqZHJtX2dlbV9zaG1lbV9wcmltZV9pbXBvcnRfbm9fbWFwKHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYsDQogCQkJCQkJCSBzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1ZikNCiB7DQogCXN0cnVjdCBkbWFf
YnVmX2F0dGFjaG1lbnQgKmF0dGFjaDsNCisJc3RydWN0IHNnX3RhYmxlICpzZ3Q7DQogCXN0cnVj
dCBkcm1fZ2VtX3NobWVtX29iamVjdCAqc2htZW07DQogCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAq
b2JqOw0KIAlzaXplX3Qgc2l6ZTsNCkBAIC04MzgsMTIgKzgzOSwxOCBAQCBzdHJ1Y3QgZHJtX2dl
bV9vYmplY3QgKmRybV9nZW1fc2htZW1fcHJpbWVfaW1wb3J0X25vX21hcChzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LA0KIA0KIAlnZXRfZG1hX2J1ZihkbWFfYnVmKTsNCiANCisJc2d0ID0gZG1hX2J1
Zl9tYXBfYXR0YWNobWVudF91bmxvY2tlZChhdHRhY2gsIERNQV9OT05FKTsNCisJaWYgKElTX0VS
UihzZ3QpKSB7DQorCQlyZXQgPSBQVFJfRVJSKHNndCk7DQorCQlnb3RvIGZhaWxfZGV0YWNoOw0K
Kwl9DQorDQogCXNpemUgPSBQQUdFX0FMSUdOKGF0dGFjaC0+ZG1hYnVmLT5zaXplKTsNCiANCiAJ
c2htZW0gPSBfX2RybV9nZW1fc2htZW1fY3JlYXRlKGRldiwgc2l6ZSwgdHJ1ZSwgTlVMTCk7DQog
CWlmIChJU19FUlIoc2htZW0pKSB7DQogCQlyZXQgPSBQVFJfRVJSKHNobWVtKTsNCi0JCWdvdG8g
ZmFpbF9kZXRhY2g7DQorCQlnb3RvIGZhaWxfdW5tYXA7DQogCX0NCiANCiAJZHJtX2RiZ19wcmlt
ZShkZXYsICJzaXplID0gJXp1XG4iLCBzaXplKTsNCkBAIC04NTMsNiArODYwLDggQEAgc3RydWN0
IGRybV9nZW1fb2JqZWN0ICpkcm1fZ2VtX3NobWVtX3ByaW1lX2ltcG9ydF9ub19tYXAoc3RydWN0
IGRybV9kZXZpY2UgKmRldiwNCiANCiAJcmV0dXJuICZzaG1lbS0+YmFzZTsNCiANCitmYWlsX3Vu
bWFwOg0KKwlkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnRfdW5sb2NrZWQoYXR0YWNoLCBzZ3QsIERN
QV9OT05FKTsNCiBmYWlsX2RldGFjaDoNCiAJZG1hX2J1Zl9kZXRhY2goZG1hX2J1ZiwgYXR0YWNo
KTsNCiAJZG1hX2J1Zl9wdXQoZG1hX2J1Zik7DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2RybV9wcmltZS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jDQppbmRleCA0M2ExMGI0
YWY0M2EuLmIzYjA3MDg2OGUzYiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJp
bWUuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jDQpAQCAtMTEwOSw2ICsxMTA5
LDggQEAgdm9pZCBkcm1fcHJpbWVfZ2VtX2Rlc3Ryb3koc3RydWN0IGRybV9nZW1fb2JqZWN0ICpv
YmosIHN0cnVjdCBzZ190YWJsZSAqc2cpDQogCWF0dGFjaCA9IG9iai0+aW1wb3J0X2F0dGFjaDsN
CiAJaWYgKHNnKQ0KIAkJZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50X3VubG9ja2VkKGF0dGFjaCwg
c2csIERNQV9CSURJUkVDVElPTkFMKTsNCisJZWxzZQ0KKwkJZG1hX2J1Zl91bm1hcF9hdHRhY2ht
ZW50X3VubG9ja2VkKGF0dGFjaCwgTlVMTCwgRE1BX05PTkUpOw0KIAlkbWFfYnVmID0gYXR0YWNo
LT5kbWFidWY7DQogCWRtYV9idWZfZGV0YWNoKGF0dGFjaC0+ZG1hYnVmLCBhdHRhY2gpOw0KIAkv
KiByZW1vdmUgdGhlIHJlZmVyZW5jZSAqLw0KLS0gDQoyLjUwLjENCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
