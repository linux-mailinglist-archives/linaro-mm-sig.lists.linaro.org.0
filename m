Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 686EFB2FBF4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Aug 2025 16:11:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC87245DCE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Aug 2025 14:10:59 +0000 (UTC)
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	by lists.linaro.org (Postfix) with ESMTPS id C8802447E2
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Aug 2025 14:10:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b="M/b3gb9K";
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=LGC4zeGC;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=yAqnGrED;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=yDgcAsut;
	spf=pass (lists.linaro.org: domain of tzimmermann@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=tzimmermann@suse.de;
	dmarc=pass (policy=none) header.from=suse.de
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 5A3C321F10;
	Thu, 21 Aug 2025 14:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1755785447; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=Jmm3Rcgx45Ek6+6JOc9UdX6C5lNjJzPeNBj+B3KBHSY=;
	b=M/b3gb9KaYn+zgSZBCrWoZy9gYsN1SytbN4WLLljsbYIBCO0FLUaVth30knSJeAm/BRn9s
	jBFQagENcGz8AuBHBFn8NTmejzpCer5jA2O4nmhydlFulsuJUZAuXRYz5s6EWOVF4O11gu
	Tah/3cnM8GeArDURRe+Rfy0yiE/WGSM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1755785447;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=Jmm3Rcgx45Ek6+6JOc9UdX6C5lNjJzPeNBj+B3KBHSY=;
	b=LGC4zeGC+rWkFcXT4TIxucWDlKtBRqg4kPI5eBDA9QydlKDoh7pMgzjBipJi3fuD6fDEET
	+8oxl6FDNEEZBeAg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1755785446; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=Jmm3Rcgx45Ek6+6JOc9UdX6C5lNjJzPeNBj+B3KBHSY=;
	b=yAqnGrEDV1/qNKKLM/r92HaigufAqe/1hjYNLOo5g2pOtDG0g5gkosQ5kVxni6fbJtRbm4
	OB1MX3Y6A2qDP7kdq4noz8S1mqaNAGdSxsrThxUPgrr8iYoCpIL8qM/gGfhBO9Evyervxj
	F32w/0TRvLO8cembLa+UYclsO33mNKo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1755785446;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=Jmm3Rcgx45Ek6+6JOc9UdX6C5lNjJzPeNBj+B3KBHSY=;
	b=yDgcAsutsJJ4VK9wRHIw303rhsFxxyJDnyy/uVzVcZwKfLD/IJbJjTmNd86GkT2zNRcUBK
	83vACgJrqiE21zBQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id E52CF13867;
	Thu, 21 Aug 2025 14:10:45 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id XhlQNuUop2g8eQAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Thu, 21 Aug 2025 14:10:45 +0000
Message-ID: <37cacb29-e382-400c-b4fb-bed733ce480b@suse.de>
Date: Thu, 21 Aug 2025 16:10:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alex Deucher <alexdeucher@gmail.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
References: <20250821064031.39090-1-tzimmermann@suse.de>
 <b92c072b-a302-47c8-b2c2-f4b2e3954165@amd.com>
 <CADnq5_PxpsXkzzpa8KJoZL-pBaM2ViVBOaXuYkYyd_xHBNLt9A@mail.gmail.com>
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
In-Reply-To: <CADnq5_PxpsXkzzpa8KJoZL-pBaM2ViVBOaXuYkYyd_xHBNLt9A@mail.gmail.com>
X-Spam-Flag: NO
X-Spam-Level: 
X-Spam-Score: -4.51
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C8802447E2
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.223.130/32];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,amd.com];
	RCVD_TLS_ALL(0.00)[];
	ASN(0.00)[asn:29298, ipnet:195.135.223.0/24, country:DE];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_BLOCKED(0.00)[suse.de:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,kylinos.cn,amd.com,linux.intel.com,kernel.org,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	URIBL_BLOCKED(0.00)[intel.com:email,linaro.org:email];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[suse.de:+]
Message-ID-Hash: 4Y324CW4HM5ADFSGTVYE4LGLT7R66YXS
X-Message-ID-Hash: 4Y324CW4HM5ADFSGTVYE4LGLT7R66YXS
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, oushixiong@kylinos.cn, alexander.deucher@amd.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, simona@ffwll.ch, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] drm/amdgpu: Pin buffers while vmap'ing exported dma-buf objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4Y324CW4HM5ADFSGTVYE4LGLT7R66YXS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkNCg0KQW0gMjEuMDguMjUgdW0gMTU6MTMgc2NocmllYiBBbGV4IERldWNoZXI6DQo+IE9uIFRo
dSwgQXVnIDIxLCAyMDI1IGF0IDQ6NTLigK9BTSBDaHJpc3RpYW4gS8O2bmlnDQo+IDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPj4NCj4+DQo+PiBPbiAyMS4wOC4yNSAwODo0MCwg
VGhvbWFzIFppbW1lcm1hbm4gd3JvdGU6DQo+Pj4gQ3VycmVudCBkbWEtYnVmIHZtYXAgc2VtYW50
aWNzIHJlcXVpcmUgdGhhdCB0aGUgbWFwcGVkIGJ1ZmZlciByZW1haW5zDQo+Pj4gaW4gcGxhY2Ug
dW50aWwgdGhlIGNvcnJlc3BvbmRpbmcgdnVubWFwIGhhcyBjb21wbGV0ZWQuDQo+Pj4NCj4+PiBG
b3IgR0VNLVNITUVNLCB0aGlzIHVzZWQgdG8gYmUgZ3VhcmFudGVlZCBieSBhIHBpbiBvcGVyYXRp
b24gd2hpbGUgY3JlYXRpbmcNCj4+PiBhbiBTL0cgdGFibGUgaW4gaW1wb3J0LiBHRU0tU0hNRU4g
Y2FuIG5vdyBpbXBvcnQgZG1hLWJ1ZiBvYmplY3RzIHdpdGhvdXQNCj4+PiBjcmVhdGluZyB0aGUg
Uy9HIHRhYmxlLCBzbyB0aGUgcGluIGlzIG1pc3NpbmcuIExlYWRzIHRvIHBhZ2UtZmF1bHQgZXJy
b3JzLA0KPj4+IHN1Y2ggYXMgdGhlIG9uZSBzaG93biBiZWxvdy4NCj4+Pg0KPj4+IFsgIDEwMi4x
MDE3MjZdIEJVRzogdW5hYmxlIHRvIGhhbmRsZSBwYWdlIGZhdWx0IGZvciBhZGRyZXNzOiBmZmZm
YzkwMTI3MDAwMDAwDQo+Pj4gWy4uLl0NCj4+PiBbICAxMDIuMTU3MTAyXSBSSVA6IDAwMTA6dWRs
X2NvbXByZXNzX2hsaW5lMTYrMHgyMTkvMHg5NDAgW3VkbF0NCj4+PiBbLi4uXQ0KPj4+IFsgIDEw
Mi4yNDMyNTBdIENhbGwgVHJhY2U6DQo+Pj4gWyAgMTAyLjI0NTY5NV0gIDxUQVNLPg0KPj4+IFsg
IDEwMi4yNDc3Vjk1XSAgPyB2YWxpZGF0ZV9jaGFpbisweDI0ZS8weDVlMA0KPj4+IFsgIDEwMi4y
NTE4MDVdICA/IF9fbG9ja19hY3F1aXJlKzB4NTY4LzB4YWUwDQo+Pj4gWyAgMTAyLjI1NTgwN10g
IHVkbF9yZW5kZXJfaGxpbmUrMHgxNjUvMHgzNDEgW3VkbF0NCj4+PiBbICAxMDIuMjYwMzM4XSAg
PyBfX3BmeF91ZGxfcmVuZGVyX2hsaW5lKzB4MTAvMHgxMCBbdWRsXQ0KPj4+IFsgIDEwMi4yNjUz
NzldICA/IGxvY2FsX2Nsb2NrX25vaW5zdHIrMHhiLzB4MTAwDQo+Pj4gWyAgMTAyLjI2OTY0Ml0g
ID8gX19sb2NrX3JlbGVhc2UuaXNyYS4wKzB4MTZjLzB4MmUwDQo+Pj4gWyAgMTAyLjI3NDI0Nl0g
ID8gbWFya19oZWxkX2xvY2tzKzB4NDAvMHg3MA0KPj4+IFsgIDEwMi4yNzgxNzddICB1ZGxfcHJp
bWFyeV9wbGFuZV9oZWxwZXJfYXRvbWljX3VwZGF0ZSsweDQzZS8weDY4MCBbdWRsXQ0KPj4+IFsg
IDEwMi4yODQ2MDZdICA/IF9fcGZ4X3VkbF9wcmltYXJ5X3BsYW5lX2hlbHBlcl9hdG9taWNfdXBk
YXRlKzB4MTAvMHgxMCBbdWRsXQ0KPj4+IFsgIDEwMi4yOTE1NTFdICA/IGxvY2tkZXBfaGFyZGly
cXNfb25fcHJlcGFyZS5wYXJ0LjArMHg5Mi8weDE3MA0KPj4+IFsgIDEwMi4yOTcyMDhdICA/IGxv
Y2tkZXBfaGFyZGlycXNfb24rMHg4OC8weDEzMA0KPj4+IFsgIDEwMi4zMDE1NTRdICA/IF9yYXdf
c3Bpbl91bmxvY2tfaXJxKzB4MjQvMHg1MA0KPj4+IFsgIDEwMi4zMDU5MDFdICA/IHdhaXRfZm9y
X2NvbXBsZXRpb25fdGltZW91dCsweDJiYi8weDNhMA0KPj4+IFsgIDEwMi4zMTEwMjhdICA/IGRy
bV9hdG9taWNfaGVscGVyX2NhbGNfdGltZXN0YW1waW5nX2NvbnN0YW50cysweDE0MS8weDIwMA0K
Pj4+IFsgIDEwMi4zMTc3MTRdICA/IGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF9wbGFuZXMrMHgz
YjYvMHgxMDMwDQo+Pj4gWyAgMTAyLjMyMzI3OV0gIGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF9w
bGFuZXMrMHgzYjYvMHgxMDMwDQo+Pj4gWyAgMTAyLjMyODY2NF0gIGRybV9hdG9taWNfaGVscGVy
X2NvbW1pdF90YWlsKzB4NDEvMHhiMA0KPj4+IFsgIDEwMi4zMzM2MjJdICBjb21taXRfdGFpbCsw
eDIwNC8weDMzMA0KPj4+IFsuLi5dDQo+Pj4gWyAgMTAyLjUyOTk0Nl0gLS0tWyBlbmQgdHJhY2Ug
MDAwMDAwMDAwMDAwMDAwMCBdLS0tDQo+Pj4gWyAgMTAyLjY1MTk4MF0gUklQOiAwMDEwOnVkbF9j
b21wcmVzc19obGluZTE2KzB4MjE5LzB4OTQwIFt1ZGxdDQo+Pj4NCj4+PiBJbiB0aGlzIHN0YWNr
IHN0cmFjZSwgdWRsIChiYXNlZCBvbiBHRU0tU0hNRU0pIGltcG9ydGVkIGFuZCB2bWFwJ2VkIGEN
Cj4+PiBkbWEtYnVmIGZyb20gYW1kZ3B1LiBBbWRncHUgcmVsb2NhdGVkIHRoZSBidWZmZXIsIHRo
ZXJlYnkgaW52YWxpZGF0aW5nIHRoZQ0KPj4+IG1hcHBpbmcuDQo+Pj4NCj4+PiBQcm92aWRlIGEg
Y3VzdG9tIGRtYS1idWYgdm1hcCBtZXRob2QgaW4gYW1kZ3B1IHRoYXQgcGlucyB0aGUgb2JqZWN0
IGJlZm9yZQ0KPj4+IG1hcHBpbmcgaXQncyBidWZmZXIncyBwYWdlcyBpbnRvIGtlcm5lbCBhZGRy
ZXNzIHNwYWNlLiBEbyB0aGUgb3Bwb3NpdGUgaW4NCj4+PiB2dW5tYXAuDQo+Pj4NCj4+PiBOb3Rl
IHRoYXQgZG1hLWJ1ZiB2bWFwIGRpZmZlcnMgZnJvbSBHRU0gdm1hcCBpbiBob3cgaXQgaGFuZGxl
cyByZWxvY2F0aW9uLg0KPj4+IFdoaWxlIGRtYS1idWYgdm1hcCBrZWVwcyB0aGUgYnVmZmVyIGlu
IHBsYWNlLCBHRU0gdm1hcCByZXF1aXJlcyB0aGUgY2FsbGVyDQo+Pj4gdG8ga2VlcCB0aGUgYnVm
ZmVyIGluIHBsYWNlLiBIZW5jZSwgdGhpcyBmaXggaXMgaW4gYW1kZ3B1J3MgZG1hLWJ1ZiBjb2Rl
DQo+Pj4gaW5zdGVhZCBvZiBpdHMgR0VNIGNvZGUuDQo+Pj4NCj4+PiBBIGRpc2N1c3Npb24gb2Yg
dmFyaW91cyBhcHByb2FjaGVzIHRvIHNvbHZpbmcgdGhlIHByb2JsZW0gaXMgYXZhaWxhYmxlDQo+
Pj4gYXQgWzFdLg0KPj4+DQo+Pj4gdjM6DQo+Pj4gLSB0cnkgKEdUVCB8IFZSQU0pOyBkcm9wIENQ
VSBkb21haW4gKENocmlzdGlhbikNCj4+PiB2MjoNCj4+PiAtIG9ubHkgdXNlIG1hcGFibGUgZG9t
YWlucyAoQ2hyaXN0aWFuKQ0KPj4+IC0gdHJ5IHBpbm5pbmcgdG8gZG9tYWlucyBpbiBwcmVmZXJy
ZWQgb3JkZXINCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emlt
bWVybWFubkBzdXNlLmRlPg0KPj4+IEZpeGVzOiA2NjBjZDQ0NjU5YTAgKCJkcm0vc2htZW0taGVs
cGVyOiBJbXBvcnQgZG1hYnVmIHdpdGhvdXQgbWFwcGluZyBpdHMgc2dfdGFibGUiKQ0KPj4+IFJl
cG9ydGVkLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4NCj4+PiBD
bG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC9iYTFiZGZiOC1kYmY3LTQz
NzItYmRjYi1kZjdlMDUxMWM3MDJAc3VzZS5kZS8NCj4+PiBDYzogU2hpeGlvbmcgT3UgPG91c2hp
eGlvbmdAa3lsaW5vcy5jbj4NCj4+PiBDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5u
QHN1c2UuZGU+DQo+Pj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBs
aW51eC5pbnRlbC5jb20+DQo+Pj4gQ2M6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9y
Zz4NCj4+PiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4NCj4+PiBDYzogU2lt
b25hIFZldHRlciA8c2ltb25hQGZmd2xsLmNoPg0KPj4+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0
LnNlbXdhbEBsaW5hcm8ub3JnPg0KPj4+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4NCj4+PiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KPj4+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCj4+PiBDYzogbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnDQo+Pj4gTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
ZHJpLWRldmVsLzk3OTJjNmMzLWEyYjgtNGIyYi1iNWJhLWZiYTE5YjE1M2UyMUBzdXNlLmRlLyAj
IFsxXQ0KPj4gUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4NCj4gVGhvbWFzIGRpZCB5b3Ugd2FudCB0byB0YWtlIHRoaXMgdGhyb3VnaCBkcm0t
bWlzYyBvciBkbyB5b3Ugd2FudCBtZSB0bw0KPiBwaWNrIHRoaXMgdXA/DQoNCklmIHlvdSBoYXZl
bid0IHNlbmQgb3V0IHRoaXMgd2VlaydzIGZpeGVzIGZvciBhbWRncHUsIHlvdSdyZSB3ZWxjb21l
IHRvIA0KcGljayBpdCB1cC4gT3RoZXJ3aXNlIEkgY2FuIG1lcmdlIGl0IHZpYSBkcm0tbWlzYy1m
aXhlcyBuZXh0IHdlZWsuDQoNCkJlc3QgcmVnYXJkcw0KVGhvbWFzDQoNCj4NCj4gVGhhbmtzLA0K
Pg0KPiBBbGV4DQo+DQo+Pj4gLS0tDQo+Pj4gICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfZG1hX2J1Zi5jIHwgMzQgKysrKysrKysrKysrKysrKysrKy0tDQo+Pj4gICAxIGZpbGUg
Y2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4+Pg0KPj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIGIvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYw0KPj4+IGluZGV4IDU3NDNl
YmIyZjFiNy4uY2UyN2NiNWJiMDVlIDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMNCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jDQo+Pj4gQEAgLTI4NSw2ICsyODUsMzYgQEAgc3RhdGlj
IGludCBhbWRncHVfZG1hX2J1Zl9iZWdpbl9jcHVfYWNjZXNzKHN0cnVjdCBkbWFfYnVmICpkbWFf
YnVmLA0KPj4+ICAgICAgICByZXR1cm4gcmV0Ow0KPj4+ICAgfQ0KPj4+DQo+Pj4gK3N0YXRpYyBp
bnQgYW1kZ3B1X2RtYV9idWZfdm1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1Ziwgc3RydWN0IGlv
c3lzX21hcCAqbWFwKQ0KPj4+ICt7DQo+Pj4gKyAgICAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpv
YmogPSBkbWFfYnVmLT5wcml2Ow0KPj4+ICsgICAgIHN0cnVjdCBhbWRncHVfYm8gKmJvID0gZ2Vt
X3RvX2FtZGdwdV9ibyhvYmopOw0KPj4+ICsgICAgIGludCByZXQ7DQo+Pj4gKw0KPj4+ICsgICAg
IC8qDQo+Pj4gKyAgICAgICogUGluIHRvIGtlZXAgYnVmZmVyIGluIHBsYWNlIHdoaWxlIGl0J3Mg
dm1hcCdlZC4gVGhlIGFjdHVhbA0KPj4+ICsgICAgICAqIGRvbWFpbiBpcyBub3QgdGhhdCBpbXBv
cnRhbnQgYXMgbG9uZyBhcyBpdCdzIG1hcGFibGUuIFVzaW5nDQo+Pj4gKyAgICAgICogR1RUIGFu
ZCBWUkFNIHNob3VsZCBiZSBjb21wYXRpYmxlIHdpdGggbW9zdCB1c2UgY2FzZXMuDQo+Pj4gKyAg
ICAgICovDQo+Pj4gKyAgICAgcmV0ID0gYW1kZ3B1X2JvX3BpbihibywgQU1ER1BVX0dFTV9ET01B
SU5fR1RUIHwgQU1ER1BVX0dFTV9ET01BSU5fVlJBTSk7DQo+Pj4gKyAgICAgaWYgKHJldCkNCj4+
PiArICAgICAgICAgICAgIHJldHVybiByZXQ7DQo+Pj4gKyAgICAgcmV0ID0gZHJtX2dlbV9kbWFi
dWZfdm1hcChkbWFfYnVmLCBtYXApOw0KPj4+ICsgICAgIGlmIChyZXQpDQo+Pj4gKyAgICAgICAg
ICAgICBhbWRncHVfYm9fdW5waW4oYm8pOw0KPj4+ICsNCj4+PiArICAgICByZXR1cm4gcmV0Ow0K
Pj4+ICt9DQo+Pj4gKw0KPj4+ICtzdGF0aWMgdm9pZCBhbWRncHVfZG1hX2J1Zl92dW5tYXAoc3Ry
dWN0IGRtYV9idWYgKmRtYV9idWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4+PiArew0KPj4+
ICsgICAgIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqID0gZG1hX2J1Zi0+cHJpdjsNCj4+PiAr
ICAgICBzdHJ1Y3QgYW1kZ3B1X2JvICpibyA9IGdlbV90b19hbWRncHVfYm8ob2JqKTsNCj4+PiAr
DQo+Pj4gKyAgICAgZHJtX2dlbV9kbWFidWZfdnVubWFwKGRtYV9idWYsIG1hcCk7DQo+Pj4gKyAg
ICAgYW1kZ3B1X2JvX3VucGluKGJvKTsNCj4+PiArfQ0KPj4+ICsNCj4+PiAgIGNvbnN0IHN0cnVj
dCBkbWFfYnVmX29wcyBhbWRncHVfZG1hYnVmX29wcyA9IHsNCj4+PiAgICAgICAgLmF0dGFjaCA9
IGFtZGdwdV9kbWFfYnVmX2F0dGFjaCwNCj4+PiAgICAgICAgLnBpbiA9IGFtZGdwdV9kbWFfYnVm
X3BpbiwNCj4+PiBAQCAtMjk0LDggKzMyNCw4IEBAIGNvbnN0IHN0cnVjdCBkbWFfYnVmX29wcyBh
bWRncHVfZG1hYnVmX29wcyA9IHsNCj4+PiAgICAgICAgLnJlbGVhc2UgPSBkcm1fZ2VtX2RtYWJ1
Zl9yZWxlYXNlLA0KPj4+ICAgICAgICAuYmVnaW5fY3B1X2FjY2VzcyA9IGFtZGdwdV9kbWFfYnVm
X2JlZ2luX2NwdV9hY2Nlc3MsDQo+Pj4gICAgICAgIC5tbWFwID0gZHJtX2dlbV9kbWFidWZfbW1h
cCwNCj4+PiAtICAgICAudm1hcCA9IGRybV9nZW1fZG1hYnVmX3ZtYXAsDQo+Pj4gLSAgICAgLnZ1
bm1hcCA9IGRybV9nZW1fZG1hYnVmX3Z1bm1hcCwNCj4+PiArICAgICAudm1hcCA9IGFtZGdwdV9k
bWFfYnVmX3ZtYXAsDQo+Pj4gKyAgICAgLnZ1bm1hcCA9IGFtZGdwdV9kbWFfYnVmX3Z1bm1hcCwN
Cj4+PiAgIH07DQo+Pj4NCj4+PiAgIC8qKg0KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NCj4+IExpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KPj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcNCg0KLS0gDQotLQ0K
VGhvbWFzIFppbW1lcm1hbm4NCkdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXINClNVU0UgU29mdHdh
cmUgU29sdXRpb25zIEdlcm1hbnkgR21iSA0KRnJhbmtlbnN0cmFzc2UgMTQ2LCA5MDQ2MSBOdWVy
bmJlcmcsIEdlcm1hbnkNCkdGOiBJdm8gVG90ZXYsIEFuZHJldyBNeWVycywgQW5kcmV3IE1jRG9u
YWxkLCBCb3VkaWVuIE1vZXJtYW4NCkhSQiAzNjgwOSAoQUcgTnVlcm5iZXJnKQ0KDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
