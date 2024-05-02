Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C544A8B9A3E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 May 2024 13:51:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 964334412D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 May 2024 11:51:29 +0000 (UTC)
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	by lists.linaro.org (Postfix) with ESMTPS id 1179F4008D
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 May 2024 11:51:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=Xd+HPEDX;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=Lhg5NcZr;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=Xd+HPEDX;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=Lhg5NcZr;
	spf=pass (lists.linaro.org: domain of tzimmermann@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=tzimmermann@suse.de;
	dmarc=pass (policy=none) header.from=suse.de
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id F07D1352A6;
	Thu,  2 May 2024 11:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1714650677; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=lPWunjgtsKUH55Qaz+CsOmKx+6A+ecZXDefV0fnDOcU=;
	b=Xd+HPEDXYWCpl85h0ivgG/ZauB6HNfnICHwZMHiDC3eqKMeOAwYTQqltnt0nVwh5FDOLa/
	I4nq/QR0BPt2d1tr8uK458zCsqZVlHl8q13iC79Dw0r79LI2WEHLs82FYsoDfDdlWqB9qP
	g7F9HQvaBHN7D2GEwh+4v7XTvYSSYuM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1714650677;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=lPWunjgtsKUH55Qaz+CsOmKx+6A+ecZXDefV0fnDOcU=;
	b=Lhg5NcZrDqHHhF8f90P1bD6AV1TyswcbexUnvSdYnGIR8cEOn1prBCtW4Ukk+709lH4PG0
	LNlcHLpac6ivJqBw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1714650677; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=lPWunjgtsKUH55Qaz+CsOmKx+6A+ecZXDefV0fnDOcU=;
	b=Xd+HPEDXYWCpl85h0ivgG/ZauB6HNfnICHwZMHiDC3eqKMeOAwYTQqltnt0nVwh5FDOLa/
	I4nq/QR0BPt2d1tr8uK458zCsqZVlHl8q13iC79Dw0r79LI2WEHLs82FYsoDfDdlWqB9qP
	g7F9HQvaBHN7D2GEwh+4v7XTvYSSYuM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1714650677;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=lPWunjgtsKUH55Qaz+CsOmKx+6A+ecZXDefV0fnDOcU=;
	b=Lhg5NcZrDqHHhF8f90P1bD6AV1TyswcbexUnvSdYnGIR8cEOn1prBCtW4Ukk+709lH4PG0
	LNlcHLpac6ivJqBw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 7D3AD13957;
	Thu,  2 May 2024 11:51:16 +0000 (UTC)
Received: from dovecot-director2.suse.de ([10.150.64.162])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id xsETHTR+M2YdLQAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Thu, 02 May 2024 11:51:16 +0000
Message-ID: <84a5f7b6-d20a-4c69-83a8-d8394fea2b68@suse.de>
Date: Thu, 2 May 2024 13:51:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Adri=C3=A1n_Larumbe?= <adrian.larumbe@collabora.com>,
 Qiang Yu <yuq825@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Koenig= <christian.koenig@amd.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Zack Rusin <zack.rusin@broadcom.com>
References: <20240501065650.2809530-1-adrian.larumbe@collabora.com>
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
In-Reply-To: <20240501065650.2809530-1-adrian.larumbe@collabora.com>
X-Spam-Level: 
X-Spam-Flag: NO
X-Spam-Score: -6.50
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1179F4008D
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.69 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[suse.de:dkim];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	RCVD_IN_DNSWL_MED(-0.20)[195.135.223.130:from];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.223.130/32];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:29298, ipnet:195.135.223.0/24, country:DE];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,gmail.com,linux.intel.com,kernel.org,ffwll.ch,arm.com,linaro.org,amd.com,broadcom.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DNSWL_BLOCKED(0.00)[2a07:de40:b281:104:10:150:64:97:received];
	DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Action: no action
Message-ID-Hash: 77VOJWXQ6IIX7M7CPB6YJ5HZJUID26TN
X-Message-ID-Hash: 77VOJWXQ6IIX7M7CPB6YJ5HZJUID26TN
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kernel@collabora.com, dri-devel@lists.freedesktop.org, lima@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 0/2] drm: Fix dma_resv deadlock at drm object pin time
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/77VOJWXQ6IIX7M7CPB6YJ5HZJUID26TN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCmlnbm9yaW5nIG15IHItYiBvbiBwYXRjaCAxLCBJJ2QgbGlrZSB0byByZXRoaW5rIHRo
ZSBjdXJyZW50IHBhdGNoZXMgaW4gDQpnZW5lcmFsLg0KDQpJIHRoaW5rIGRybV9nZW1fc2htZW1f
cGluKCkgc2hvdWxkIGJlY29tZSB0aGUgbG9ja2VkIHZlcnNpb24gb2YgX3BpbigpLCANCnNvIHRo
YXQgZHJtX2dlbV9zaG1lbV9vYmplY3RfcGluKCkgY2FuIGNhbGwgaXQgZGlyZWN0bHkuIFRoZSBl
eGlzdGluZyANCl9waW5fdW5sb2NrZWQoKSB3b3VsZCBub3QgYmUgbmVlZGVkIGFueSBsb25nZXIu
IFNhbWUgZm9yIHRoZSBfdW5waW4oKSANCmZ1bmN0aW9ucy4gVGhpcyBjaGFuZ2Ugd291bGQgYWxz
byBmaXggdGhlIGNvbnNpc3RlbmN5IHdpdGggdGhlIHNlbWFudGljcyANCm9mIHRoZSBzaG1lbSBf
dm1hcCgpIGZ1bmN0aW9ucywgd2hpY2ggbmV2ZXIgdGFrZSByZXNlcnZhdGlvbiBsb2Nrcy4NCg0K
VGhlcmUgYXJlIG9ubHkgdHdvIGV4dGVybmFsIGNhbGxlcnMgb2YgZHJtX2dlbV9zaG1lbV9waW4o
KTogdGhlIHRlc3QgDQpjYXNlIGFuZCBwYW50aG9yLiBUaGVzZSBhc3N1bWUgdGhhdCBkcm1fZ2Vt
X3NobWVtX3BpbigpIGFjcXVpcmVzIHRoZSANCnJlc2VydmF0aW9uIGxvY2suIFRoZSB0ZXN0IGNh
c2Ugc2hvdWxkIGxpa2VseSBjYWxsIGRybV9nZW1fcGluKCkgDQppbnN0ZWFkLiBUaGF0IHdvdWxk
IGFjcXVpcmUgdGhlIHJlc2VydmF0aW9uIGxvY2sgYW5kIHRoZSB0ZXN0IHdvdWxkIA0KdmFsaWRh
dGUgdGhhdCBzaG1lbSdzIHBpbiBoZWxwZXIgaW50ZWdyYXRlcyB3ZWxsIGludG8gdGhlIG92ZXJh
bGwgR0VNIA0KZnJhbWV3b3JrLiBUaGUgd2F5IHBhbnRob3IgdXNlcyBkcm1fZ2VtX3NobWVtX3Bp
bigpIGxvb2tzIHdyb25nIHRvIG1lLiANCkZvciBub3csIGl0IGNvdWxkIHJlY2VpdmUgYSB3cmFw
cGVyIHRoYXQgdGFrZXMgdGhlIGxvY2sgYW5kIHRoYXQncyBpdC4NCg0KQmVzdCByZWdhcmRzDQpU
aG9tYXMNCg0KQW0gMDEuMDUuMjQgdW0gMDg6NTUgc2NocmllYiBBZHJpw6FuIExhcnVtYmU6DQo+
IFRoaXMgaXMgdjMgb2YgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIwMjQwNDI0
MDkwNDI5LjU3ZGU3ZDFjQGNvbGxhYm9yYS5jb20vDQo+DQo+IFRoZSBnb2FsIG9mIHRoaXMgcGF0
Y2ggc2VyaWVzIGlzIGZpeGluZyBhIGRlYWRsb2NrIHVwb24gbG9ja2luZyB0aGUgZG1hIHJlc2Vy
dmF0aW9uDQo+IG9mIGEgRFJNIGdlbSBvYmplY3Qgd2hlbiBwaW5uaW5nIGl0LCBhdCBhIHByaW1l
IGltcG9ydCBvcGVyYXRpb24uDQo+DQo+IENoYW5nZXMgZnJvbSB2MjoNCj4gICAtIFJlbW92ZWQg
Y29tbWVudCBleHBsYWluaW5nIHJlYXNvbiB3aHkgYW4gYWxyZWFkeS1sb2NrZWQNCj4gcGluIGZ1
bmN0aW9uIHJlcGxhY2VkIHRoZSBsb2NrZWQgdmFyaWFudCBpbnNpZGUgUGFuZnJvc3Qncw0KPiBv
YmplY3QgcGluIGNhbGxiYWNrLg0KPiAgIC0gTW92ZWQgYWxyZWFkeS1hc3NpZ25lZCBhdHRhY2ht
ZW50IHdhcm5pbmcgaW50byBnZW5lcmljDQo+IGFscmVhZHktbG9ja2VkIGdlbSBvYmplY3QgcGlu
IGZ1bmN0aW9uDQo+DQo+IEFkcmnDoW4gTGFydW1iZSAoMik6DQo+ICAgIGRybS9wYW5mcm9zdDog
Rml4IGRtYV9yZXN2IGRlYWRsb2NrIGF0IGRybSBvYmplY3QgcGluIHRpbWUNCj4gICAgZHJtL2dl
bS1zaG1lbTogQWRkIGltcG9ydCBhdHRhY2htZW50IHdhcm5pbmcgdG8gbG9ja2VkIHBpbiBmdW5j
dGlvbg0KPg0KPiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jICB8IDIg
KysNCj4gICBkcml2ZXJzL2dwdS9kcm0vbGltYS9saW1hX2dlbS5jICAgICAgICAgfCAyICstDQo+
ICAgZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2dlbS5jIHwgMiArLQ0KPiAgIDMg
ZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPg0KPg0KPiBi
YXNlLWNvbW1pdDogNzViNjhmMjJlMzlhYWZiMjJmM2Q4ZTMwNzFlMWFiYTczNTYwNzg4Yw0KDQot
LSANCi0tDQpUaG9tYXMgWmltbWVybWFubg0KR3JhcGhpY3MgRHJpdmVyIERldmVsb3Blcg0KU1VT
RSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJIDQpGcmFua2Vuc3RyYXNzZSAxNDYsIDkw
NDYxIE51ZXJuYmVyZywgR2VybWFueQ0KR0Y6IEl2byBUb3RldiwgQW5kcmV3IE15ZXJzLCBBbmRy
ZXcgTWNEb25hbGQsIEJvdWRpZW4gTW9lcm1hbg0KSFJCIDM2ODA5IChBRyBOdWVybmJlcmcpDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
