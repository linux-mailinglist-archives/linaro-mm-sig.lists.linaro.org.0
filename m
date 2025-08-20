Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EA2B2D776
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Aug 2025 11:05:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C38BC4460B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Aug 2025 09:05:03 +0000 (UTC)
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	by lists.linaro.org (Postfix) with ESMTPS id CC57B4460B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 Aug 2025 09:04:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=rW8LlTp5;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=TNJr8Cbe;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=f2pomFcH;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=GAlbcD52;
	spf=pass (lists.linaro.org: domain of tzimmermann@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=tzimmermann@suse.de;
	dmarc=pass (policy=none) header.from=suse.de
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 335F81F7B0;
	Wed, 20 Aug 2025 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1755680694; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=nZ//gYY6UXXsx8QcVxJZiYWNUdOZeg7R6DnSFft/9ko=;
	b=rW8LlTp5Ius2uMmiWYqVwjeWp+YC2tYAXBljI9+eeJ0JmFnW5tylR0DNB8x8Z+4yJ9IIVO
	YrWSReN62jrRzUiHDjSrWYOWRQB2+JDl5VBs4i+g6Zw4qGHL+O14vRKbV4F08zhuhcxJpp
	t5aTBOq0KeGaPJUGUvCVXCQ9BI4gHIA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1755680694;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=nZ//gYY6UXXsx8QcVxJZiYWNUdOZeg7R6DnSFft/9ko=;
	b=TNJr8Cbe8WiZNrEobLpZEppNUMiLfbnxJrDdSJcIB0jRWHFi9vANAh0ptiW40NQFAWno3W
	yFzkVbCGxfWkxuAg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1755680693; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=nZ//gYY6UXXsx8QcVxJZiYWNUdOZeg7R6DnSFft/9ko=;
	b=f2pomFcHTALt76PEmDQKAAWWh/vx1Hy6018RNVGOx9Ejrw/sfEde/Y7l1G9iaBEzw4eJlT
	oxtNRHZsAuW9aUzJVGYruT+WHhT3ZivO5IWRIq/ytPo8Bs4tW8GyI83WpD9QOWOdqLXTmn
	AwcmXp6jD5msYuCurUQJnTOF+EYB+ME=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1755680693;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=nZ//gYY6UXXsx8QcVxJZiYWNUdOZeg7R6DnSFft/9ko=;
	b=GAlbcD52iVotZJkLmCBtrtGaL2bcOF3GBEearKbQ1jwn4JNiLKWkUYkT7SBy+B3KC4kNyA
	e2kClt2La73YPfDQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id CF4271368B;
	Wed, 20 Aug 2025 09:04:52 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id N/xoMbSPpWigdgAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Wed, 20 Aug 2025 09:04:52 +0000
Message-ID: <1dcb967f-4e7f-4a6b-957c-924d2dec55fc@suse.de>
Date: Wed, 20 Aug 2025 11:04:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 sumit.semwal@linaro.org, oushixiong@kylinos.cn, alexander.deucher@amd.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@gmail.com,
 simona@ffwll.ch
References: <20250818151710.284982-1-tzimmermann@suse.de>
 <f31550b1-b89c-47d6-b012-99479ba12aeb@amd.com>
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
In-Reply-To: <f31550b1-b89c-47d6-b012-99479ba12aeb@amd.com>
X-Spam-Level: 
X-Spam-Flag: NO
X-Spam-Score: -4.51
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CC57B4460B
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.223.131/32];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:29298, ipnet:195.135.223.0/24, country:DE];
	FREEMAIL_TO(0.00)[amd.com,linaro.org,kylinos.cn,linux.intel.com,kernel.org,gmail.com,ffwll.ch];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_BLOCKED(0.00)[suse.de:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DNSWL_BLOCKED(0.00)[195.135.223.131:from,2a07:de40:b281:106:10:150:64:167:received,2a07:de40:b281:104:10:150:64:97:received];
	DKIM_TRACE(0.00)[suse.de:+]
Message-ID-Hash: WITEVTYTMA6TWB56MWTAR3HLJMBQRRTU
X-Message-ID-Hash: WITEVTYTMA6TWB56MWTAR3HLJMBQRRTU
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/amdgpu: Pin buffers while vmap'ing exported dma-buf objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WITEVTYTMA6TWB56MWTAR3HLJMBQRRTU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkNCg0KQW0gMTguMDguMjUgdW0gMTc6NDMgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOg0KPiBP
biAxOC4wOC4yNSAxNzoxNywgVGhvbWFzIFppbW1lcm1hbm4gd3JvdGU6DQo+PiBDdXJyZW50IGRt
YS1idWYgdm1hcCBzZW1hbnRpY3MgcmVxdWlyZSB0aGF0IHRoZSBtYXBwZWQgYnVmZmVyIHJlbWFp
bnMNCj4+IGluIHBsYWNlIHVudGlsIHRoZSBjb3JyZXNwb25kaW5nIHZ1bm1hcCBoYXMgY29tcGxl
dGVkLg0KPj4NCj4+IEZvciBHRU0tU0hNRU0sIHRoaXMgdXNlZCB0byBiZSBndWFyYW50ZWVkIGJ5
IGEgcGluIG9wZXJhdGlvbiB3aGlsZSBjcmVhdGluZw0KPj4gYW4gUy9HIHRhYmxlIGluIGltcG9y
dC4gR0VNLVNITUVOIGNhbiBub3cgaW1wb3J0IGRtYS1idWYgb2JqZWN0cyB3aXRob3V0DQo+PiBj
cmVhdGluZyB0aGUgUy9HIHRhYmxlLCBzbyB0aGUgcGluIGlzIG1pc3NpbmcuIExlYWRzIHRvIHBh
Z2UtZmF1bHQgZXJyb3JzLA0KPj4gc3VjaCBhcyB0aGUgb25lIHNob3duIGJlbG93Lg0KPj4NCj4+
IFsgIDEwMi4xMDE3MjZdIEJVRzogdW5hYmxlIHRvIGhhbmRsZSBwYWdlIGZhdWx0IGZvciBhZGRy
ZXNzOiBmZmZmYzkwMTI3MDAwMDAwDQo+PiBbLi4uXQ0KPj4gWyAgMTAyLjE1NzEwMl0gUklQOiAw
MDEwOnVkbF9jb21wcmVzc19obGluZTE2KzB4MjE5LzB4OTQwIFt1ZGxdDQo+PiBbLi4uXQ0KPj4g
WyAgMTAyLjI0MzI1MF0gQ2FsbCBUcmFjZToNCj4+IFsgIDEwMi4yNDU2OTVdICA8VEFTSz4NCj4+
IFsgIDEwMi4yNDc3Vjk1XSAgPyB2YWxpZGF0ZV9jaGFpbisweDI0ZS8weDVlMA0KPj4gWyAgMTAy
LjI1MTgwNV0gID8gX19sb2NrX2FjcXVpcmUrMHg1NjgvMHhhZTANCj4+IFsgIDEwMi4yNTU4MDdd
ICB1ZGxfcmVuZGVyX2hsaW5lKzB4MTY1LzB4MzQxIFt1ZGxdDQo+PiBbICAxMDIuMjYwMzM4XSAg
PyBfX3BmeF91ZGxfcmVuZGVyX2hsaW5lKzB4MTAvMHgxMCBbdWRsXQ0KPj4gWyAgMTAyLjI2NTM3
OV0gID8gbG9jYWxfY2xvY2tfbm9pbnN0cisweGIvMHgxMDANCj4+IFsgIDEwMi4yNjk2NDJdICA/
IF9fbG9ja19yZWxlYXNlLmlzcmEuMCsweDE2Yy8weDJlMA0KPj4gWyAgMTAyLjI3NDI0Nl0gID8g
bWFya19oZWxkX2xvY2tzKzB4NDAvMHg3MA0KPj4gWyAgMTAyLjI3ODE3N10gIHVkbF9wcmltYXJ5
X3BsYW5lX2hlbHBlcl9hdG9taWNfdXBkYXRlKzB4NDNlLzB4NjgwIFt1ZGxdDQo+PiBbICAxMDIu
Mjg0NjA2XSAgPyBfX3BmeF91ZGxfcHJpbWFyeV9wbGFuZV9oZWxwZXJfYXRvbWljX3VwZGF0ZSsw
eDEwLzB4MTAgW3VkbF0NCj4+IFsgIDEwMi4yOTE1NTFdICA/IGxvY2tkZXBfaGFyZGlycXNfb25f
cHJlcGFyZS5wYXJ0LjArMHg5Mi8weDE3MA0KPj4gWyAgMTAyLjI5NzIwOF0gID8gbG9ja2RlcF9o
YXJkaXJxc19vbisweDg4LzB4MTMwDQo+PiBbICAxMDIuMzAxNTU0XSAgPyBfcmF3X3NwaW5fdW5s
b2NrX2lycSsweDI0LzB4NTANCj4+IFsgIDEwMi4zMDU5MDFdICA/IHdhaXRfZm9yX2NvbXBsZXRp
b25fdGltZW91dCsweDJiYi8weDNhMA0KPj4gWyAgMTAyLjMxMTAyOF0gID8gZHJtX2F0b21pY19o
ZWxwZXJfY2FsY190aW1lc3RhbXBpbmdfY29uc3RhbnRzKzB4MTQxLzB4MjAwDQo+PiBbICAxMDIu
MzE3NzE0XSAgPyBkcm1fYXRvbWljX2hlbHBlcl9jb21taXRfcGxhbmVzKzB4M2I2LzB4MTAzMA0K
Pj4gWyAgMTAyLjMyMzI3OV0gIGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF9wbGFuZXMrMHgzYjYv
MHgxMDMwDQo+PiBbICAxMDIuMzI4NjY0XSAgZHJtX2F0b21pY19oZWxwZXJfY29tbWl0X3RhaWwr
MHg0MS8weGIwDQo+PiBbICAxMDIuMzMzNjIyXSAgY29tbWl0X3RhaWwrMHgyMDQvMHgzMzANCj4+
IFsuLi5dDQo+PiBbICAxMDIuNTI5OTQ2XSAtLS1bIGVuZCB0cmFjZSAwMDAwMDAwMDAwMDAwMDAw
IF0tLS0NCj4+IFsgIDEwMi42NTE5ODBdIFJJUDogMDAxMDp1ZGxfY29tcHJlc3NfaGxpbmUxNisw
eDIxOS8weDk0MCBbdWRsXQ0KPj4NCj4+IEluIHRoaXMgc3RhY2sgc3RyYWNlLCB1ZGwgKGJhc2Vk
IG9uIEdFTS1TSE1FTSkgaW1wb3J0ZWQgYW5kIHZtYXAnZWQgYQ0KPj4gZG1hLWJ1ZiBmcm9tIGFt
ZGdwdS4gQW1kZ3B1IHJlbG9jYXRlZCB0aGUgYnVmZmVyLCB0aGVyZWJ5IGludmFsaWRhdGluZyB0
aGUNCj4+IG1hcHBpbmcuDQo+Pg0KPj4gUHJvdmlkZSBhIGN1c3RvbSBkbWEtYnVmIHZtYXAgbWV0
aG9kIGluIGFtZGdwdSB0aGF0IHBpbnMgdGhlIG9iamVjdCBiZWZvcmUNCj4+IG1hcHBpbmcgaXQn
cyBidWZmZXIncyBwYWdlcyBpbnRvIGtlcm5lbCBhZGRyZXNzIHNwYWNlLiBEbyB0aGUgb3Bwb3Np
dGUgaW4NCj4+IHZ1bm1hcC4NCj4+DQo+PiBOb3RlIHRoYXQgZG1hLWJ1ZiB2bWFwIGRpZmZlcnMg
ZnJvbSBHRU0gdm1hcCBpbiBob3cgaXQgaGFuZGxlcyByZWxvY2F0aW9uLg0KPj4gV2hpbGUgZG1h
LWJ1ZiB2bWFwIGtlZXBzIHRoZSBidWZmZXIgaW4gcGxhY2UsIEdFTSB2bWFwIHJlcXVpcmVzIHRo
ZSBjYWxsZXINCj4+IHRvIGtlZXAgdGhlIGJ1ZmZlciBpbiBwbGFjZS4gSGVuY2UsIHRoaXMgZml4
IGlzIGluIGFtZGdwdSdzIGRtYS1idWYgY29kZQ0KPj4gaW5zdGVhZCBvZiBpdHMgR0VNIGNvZGUu
DQo+Pg0KPj4gQSBkaXNjdXNzaW9uIG9mIHZhcmlvdXMgYXBwcm9hY2hlcyB0byBzb2x2aW5nIHRo
ZSBwcm9ibGVtIGlzIGF2YWlsYWJsZQ0KPj4gYXQgWzFdLg0KPj4NCj4+IHYyOg0KPj4gLSBvbmx5
IHVzZSBtYXBhYmxlIGRvbWFpbnMgKENocmlzdGlhbikNCj4+IC0gdHJ5IHBpbm5pbmcgdG8gZG9t
YWlucyBpbiBwcmVmZXJlZCBvcmRlcg0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1t
ZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KPj4gRml4ZXM6IDY2MGNkNDQ2NTlhMCAoImRy
bS9zaG1lbS1oZWxwZXI6IEltcG9ydCBkbWFidWYgd2l0aG91dCBtYXBwaW5nIGl0cyBzZ190YWJs
ZSIpDQo+PiBSZXBvcnRlZC1ieTogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2Uu
ZGU+DQo+PiBDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC9iYTFiZGZi
OC1kYmY3LTQzNzItYmRjYi1kZjdlMDUxMWM3MDJAc3VzZS5kZS8NCj4+IENjOiBTaGl4aW9uZyBP
dSA8b3VzaGl4aW9uZ0BreWxpbm9zLmNuPg0KPj4gQ2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emlt
bWVybWFubkBzdXNlLmRlPg0KPj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmto
b3JzdEBsaW51eC5pbnRlbC5jb20+DQo+PiBDYzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJu
ZWwub3JnPg0KPj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBnbWFpbC5jb20+DQo+PiBDYzog
U2ltb25hIFZldHRlciA8c2ltb25hQGZmd2xsLmNoPg0KPj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3Vt
aXQuc2Vtd2FsQGxpbmFyby5vcmc+DQo+PiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+DQo+PiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KPj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KPj4gQ2M6IGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZw0KPj4gTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJp
LWRldmVsLzk3OTJjNmMzLWEyYjgtNGIyYi1iNWJhLWZiYTE5YjE1M2UyMUBzdXNlLmRlLyAjIFsx
XQ0KPj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2Uu
ZGU+DQo+PiAtLS0NCj4+ICAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9i
dWYuYyB8IDQxICsrKysrKysrKysrKysrKysrKysrLQ0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMzkg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyBiL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMNCj4+IGluZGV4IDU3NDNlYmIyZjFiNy4uNDcxYjQx
YmQzZTI5IDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X2RtYV9idWYuYw0KPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rt
YV9idWYuYw0KPj4gQEAgLTI4NSw2ICsyODUsNDMgQEAgc3RhdGljIGludCBhbWRncHVfZG1hX2J1
Zl9iZWdpbl9jcHVfYWNjZXNzKHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmLA0KPj4gICAJcmV0dXJu
IHJldDsNCj4+ICAgfQ0KPj4gICANCj4+ICtzdGF0aWMgaW50IGFtZGdwdV9kbWFfYnVmX3ZtYXAo
c3RydWN0IGRtYV9idWYgKmRtYV9idWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4+ICt7DQo+
PiArCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqID0gZG1hX2J1Zi0+cHJpdjsNCj4+ICsJc3Ry
dWN0IGFtZGdwdV9ibyAqYm8gPSBnZW1fdG9fYW1kZ3B1X2JvKG9iaik7DQo+PiArCWludCByZXQ7
DQo+PiArDQo+PiArCS8qDQo+PiArCSAqIFBpbiB0byBrZWVwIGJ1ZmZlciBpbiBwbGFjZSB3aGls
ZSBpdCdzIHZtYXAnZWQuIFRoZSBhY3R1YWwNCj4+ICsJICogZG9tYWluIGlzIG5vdCB0aGF0IGlt
cG9ydGFudCBhcyBsb25nIGFzIGl0J3MgbWFwYWJsZS4gVXNpbmcNCj4+ICsJICogR1RUIHNob3Vs
ZCBiZSBjb21wYXRpYmxlIHdpdGggbW9zdCB1c2UgY2FzZXMuIFZSQU0gYW5kIENQVQ0KPj4gKwkg
KiBhcmUgdGhlIGZhbGxiYWNrcyBpZiB0aGUgYnVmZmVyIGhhcyBhbHJlYWR5IGJlZW4gcGlubmVk
IHRoZXJlLg0KPj4gKwkgKi8NCj4+ICsJcmV0ID0gYW1kZ3B1X2JvX3BpbihibywgQU1ER1BVX0dF
TV9ET01BSU5fR1RUKTsNCj4+ICsJaWYgKHJldCkgew0KPj4gKwkJcmV0ID0gYW1kZ3B1X2JvX3Bp
bihibywgQU1ER1BVX0dFTV9ET01BSU5fVlJBTSk7DQo+IFRoYXQgbWFrZXMgZXZlbiBsZXNzIHNl
bnNlIDopDQoNClRoaXMgaXMgaW50ZW50aW9uYWwgc28gdGhhdCBhbWRncHUgZmlyc3QgdHJpZXMg
dGhlIG1vc3QgY29tcGF0aWJsZSANCmRvbWFpbiBHVFQgYW5kIFZSQU0gb25seSBhcyBhIHNlY29u
ZCBvcHRpb24uDQoNCj4NCj4gVGhlIHZhbHVlcyBhcmUgYSBtYXNrLCB0cnkgdGhpczoNCj4NCj4g
cmV0ID0gYW1kZ3B1X2JvX3BpbihibywgQU1ER1BVX0dFTV9ET01BSU5fR1RUIHwgQU1ER1BVX0dF
TV9ET01BSU5fVlJBTSk7DQoNCkknbSBhd2FyZSB0aGF0IGl0J3MgYSBiaXRtYXNrLiBCdXQgSUlV
QyANCmFtZGdwdV9ib19wbGFjZW1lbnRfZnJvbV9kb21haW4oKSBbMV0gcHJlZmVycyBWUkFNIG92
ZXIgR1RUIGlmIGJvdGggYXJlIA0KZ2l2ZW4uIElmIGFub3RoZXIgaW1wb3J0ZXIgbm93IGNvbWVz
IHRoYXQgcmVxdWlyZXMgdGhlIEJPIGluIEdUVCwgaXQgDQp3b3VsZCBmYWlsIHRoZSBwaW4uDQoN
ClsxXSANCmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjE2LjEvc291cmNlL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3QuYyNMMTA5DQoNCj4NCj4gT3Ro
ZXJ3aXNlIHRoZSBwaW4gY29kZSB3aWxsIHRyeSB0byBtb3ZlIHRoZSBidWZmZXIgYXJvdW5kIHRv
IHNhdGlzZnkgdGhlIGNvbnRyYWluIHlvdSBnaXZlbi4NCg0KPg0KPiBBbmQgZG9uJ3QgdXNlIHRo
ZSBDUFUgZG9tYWluIGhlcmUsIHRoaXMgd2lsbCBvdGhlcndpc2UgcG90ZW50aWFsbHkgYmxvY2sg
c3VibWlzc2lvbiBsYXRlciBvbi4NCg0KT2suDQoNCkJlc3QgcmVnYXJkcw0KVGhvbWFzDQoNCj4N
Cj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0KPg0KPj4gKwkJaWYgKHJldCkgew0KPj4gKwkJCXJl
dCA9IGFtZGdwdV9ib19waW4oYm8sIEFNREdQVV9HRU1fRE9NQUlOX0NQVSk7DQo+PiArCQkJaWYg
KHJldCkNCj4+ICsJCQkJcmV0dXJuIHJldDsNCj4+ICsJCX0NCj4+ICsJfQ0KPj4gKwlyZXQgPSBk
cm1fZ2VtX2RtYWJ1Zl92bWFwKGRtYV9idWYsIG1hcCk7DQo+PiArCWlmIChyZXQpDQo+PiArCQlh
bWRncHVfYm9fdW5waW4oYm8pOw0KPj4gKw0KPj4gKwlyZXR1cm4gcmV0Ow0KPj4gK30NCj4+ICsN
Cj4+ICtzdGF0aWMgdm9pZCBhbWRncHVfZG1hX2J1Zl92dW5tYXAoc3RydWN0IGRtYV9idWYgKmRt
YV9idWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4+ICt7DQo+PiArCXN0cnVjdCBkcm1fZ2Vt
X29iamVjdCAqb2JqID0gZG1hX2J1Zi0+cHJpdjsNCj4+ICsJc3RydWN0IGFtZGdwdV9ibyAqYm8g
PSBnZW1fdG9fYW1kZ3B1X2JvKG9iaik7DQo+PiArDQo+PiArCWRybV9nZW1fZG1hYnVmX3Z1bm1h
cChkbWFfYnVmLCBtYXApOw0KPj4gKwlhbWRncHVfYm9fdW5waW4oYm8pOw0KPj4gK30NCj4+ICsN
Cj4+ICAgY29uc3Qgc3RydWN0IGRtYV9idWZfb3BzIGFtZGdwdV9kbWFidWZfb3BzID0gew0KPj4g
ICAJLmF0dGFjaCA9IGFtZGdwdV9kbWFfYnVmX2F0dGFjaCwNCj4+ICAgCS5waW4gPSBhbWRncHVf
ZG1hX2J1Zl9waW4sDQo+PiBAQCAtMjk0LDggKzMzMSw4IEBAIGNvbnN0IHN0cnVjdCBkbWFfYnVm
X29wcyBhbWRncHVfZG1hYnVmX29wcyA9IHsNCj4+ICAgCS5yZWxlYXNlID0gZHJtX2dlbV9kbWFi
dWZfcmVsZWFzZSwNCj4+ICAgCS5iZWdpbl9jcHVfYWNjZXNzID0gYW1kZ3B1X2RtYV9idWZfYmVn
aW5fY3B1X2FjY2VzcywNCj4+ICAgCS5tbWFwID0gZHJtX2dlbV9kbWFidWZfbW1hcCwNCj4+IC0J
LnZtYXAgPSBkcm1fZ2VtX2RtYWJ1Zl92bWFwLA0KPj4gLQkudnVubWFwID0gZHJtX2dlbV9kbWFi
dWZfdnVubWFwLA0KPj4gKwkudm1hcCA9IGFtZGdwdV9kbWFfYnVmX3ZtYXAsDQo+PiArCS52dW5t
YXAgPSBhbWRncHVfZG1hX2J1Zl92dW5tYXAsDQo+PiAgIH07DQo+PiAgIA0KPj4gICAvKioNCg0K
LS0gDQotLQ0KVGhvbWFzIFppbW1lcm1hbm4NCkdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXINClNV
U0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSA0KRnJhbmtlbnN0cmFzc2UgMTQ2LCA5
MDQ2MSBOdWVybmJlcmcsIEdlcm1hbnkNCkdGOiBJdm8gVG90ZXYsIEFuZHJldyBNeWVycywgQW5k
cmV3IE1jRG9uYWxkLCBCb3VkaWVuIE1vZXJtYW4NCkhSQiAzNjgwOSAoQUcgTnVlcm5iZXJnKQ0K
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
