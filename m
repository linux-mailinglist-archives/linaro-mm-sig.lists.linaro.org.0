Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FCFA417A0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Feb 2025 09:41:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B59F044A39
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Feb 2025 08:41:49 +0000 (UTC)
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	by lists.linaro.org (Postfix) with ESMTPS id 4AFC93F664
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Feb 2025 08:41:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=2Vg3z+uB;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b="5/HWi+iG";
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=2Vg3z+uB;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b="5/HWi+iG";
	dmarc=pass (policy=none) header.from=suse.de;
	spf=pass (lists.linaro.org: domain of tzimmermann@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=tzimmermann@suse.de
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 03CAF21170;
	Mon, 24 Feb 2025 08:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1740386505; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=Q0q0OFhnReu4nyG1O8BohYY6LE6BcFtozBowaB0rVrI=;
	b=2Vg3z+uBOa9ZlLVULS4UP8fCjNyWJybxsK37iUOSJwx/roH8dg8KWMN7TO49M+zreqiHtE
	in9LcfQ/1065C+7LvX+Lptz8mSaLOG7dRTzJS/En7s1xdVxdVYI0cTBc0YQbltiMtCKomm
	7oxyXDEbKVWmfxmcqs7h6XChfx34vTQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1740386505;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=Q0q0OFhnReu4nyG1O8BohYY6LE6BcFtozBowaB0rVrI=;
	b=5/HWi+iGK2xtm2UCHvyvFDbwkJlzHbTrwG05DZgDeNpYdTCtr/ETRJVsOrAxgaqEa5VEBC
	cL39gNQcOsMpgqCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1740386505; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=Q0q0OFhnReu4nyG1O8BohYY6LE6BcFtozBowaB0rVrI=;
	b=2Vg3z+uBOa9ZlLVULS4UP8fCjNyWJybxsK37iUOSJwx/roH8dg8KWMN7TO49M+zreqiHtE
	in9LcfQ/1065C+7LvX+Lptz8mSaLOG7dRTzJS/En7s1xdVxdVYI0cTBc0YQbltiMtCKomm
	7oxyXDEbKVWmfxmcqs7h6XChfx34vTQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1740386505;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=Q0q0OFhnReu4nyG1O8BohYY6LE6BcFtozBowaB0rVrI=;
	b=5/HWi+iGK2xtm2UCHvyvFDbwkJlzHbTrwG05DZgDeNpYdTCtr/ETRJVsOrAxgaqEa5VEBC
	cL39gNQcOsMpgqCw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 3173C13332;
	Mon, 24 Feb 2025 08:41:44 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id OXG/CsgwvGcoVgAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Mon, 24 Feb 2025 08:41:44 +0000
Message-ID: <6f7b0886-5f31-4ba9-b82e-e9d3614b504f@suse.de>
Date: Mon, 24 Feb 2025 09:41:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aditya Garg <gargaditya08@live.com>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>
References: <DC5079B2-9D3D-4917-A50D-20D633071808@live.com>
 <8F522D41-5417-467E-B9D3-7D9FC24AE536@live.com>
 <Z7igVXqvRYTVFpXU@smile.fi.intel.com>
 <A373EDB5-528D-4ECF-8CF3-4F96DE6E3797@live.com>
 <Z7jlORk0MiMFTmp6@smile.fi.intel.com>
 <E8256A03-5D13-4B8B-932D-70E734E580FE@live.com>
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
In-Reply-To: <E8256A03-5D13-4B8B-932D-70E734E580FE@live.com>
X-Spam-Level: 
X-Spam-Score: -2.80
X-Spam-Flag: NO
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4AFC93F664
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.223.130/32];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	TAGGED_RCPT(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:29298, ipnet:195.135.223.0/24, country:DE];
	FREEMAIL_TO(0.00)[live.com,linux.intel.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[suse.com,goodmis.org,rasmusvillemoes.dk,chromium.org,lwn.net,linux.intel.com,kernel.org,gmail.com,ffwll.ch,linux-foundation.org,canonical.com,perches.com,linaro.org,amd.com,kodeit.net,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,marcan.st,armlinux.org.uk,lists.linux.dev,svenpeter.dev,jannau.net];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[195.135.223.130:from];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Action: no action
Message-ID-Hash: YDDW5IUVACM4ET5RVFVQHS65UZ2XWNNR
X-Message-ID-Hash: YDDW5IUVACM4ET5RVFVQHS65UZ2XWNNR
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "pmladek@suse.com" <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>, "linux@rasmusvillemoes.dk" <linux@rasmusvillemoes.dk>, "senozhatsky@chromium.org" <senozhatsky@chromium.org>, Jonathan Corbet <corbet@lwn.net>, "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>, "mripard@kernel.org" <mripard@kernel.org>, "simona@ffwll.ch" <simona@ffwll.ch>, Andrew Morton <akpm@linux-foundation.org>, "apw@canonical.com" <apw@canonical.com>, "joe@perches.com" <joe@perches.com>, "dwaipayanray1@gmail.com" <dwaipayanray1@gmail.com>, "lukas.bulwahn@gmail.com" <lukas.bulwahn@gmail.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>, Kerem Karabay <kekrby@gmail.com>, Aun-Ali Zaidi <admin@kodeit.net>, Orlando Chamberlain <orlandoch.dev@gmail.com>, Atharva Tiwari <evepolonium@gmail.com>, "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "dri-devel@list
 s.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, Hector Martin <marcan@marcan.st>, "linux@armlinux.org.uk" <linux@armlinux.org.uk>, Asahi Linux Mailing List <asahi@lists.linux.dev>, Sven Peter <sven@svenpeter.dev>, Janne Grunau <j@jannau.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 3/3] drm/tiny: add driver for Apple Touch Bars in x86 Macs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YDDW5IUVACM4ET5RVFVQHS65UZ2XWNNR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkNCg0KQW0gMjIuMDIuMjUgdW0gMTA6MDcgc2NocmllYiBBZGl0eWEgR2FyZzoNCj4+IFdoYXQg
cGFkZGluZywgcGxlYXNlPyBXaHkgVENQIFVBUEkgaGVhZGVycyBkbyBub3QgaGF2ZSB0aGVzZSBh
dHRyaWJ1dGVzPw0KPj4gVGhpbmsgYWJvdXQgaXQsIGFuZCB0aGluayBhYm91dCB3aGF0IGFjdHVh
bGx5IF9fcGFja2VkIGRvZXMgYW5kIGhvdyBpdCBhZmZlY3RzDQo+PiAoYmFkbHkpIHRoZSBjb2Rl
IGdlbmVyYXRpb24uIE90aGVyd2lzZSBpdCBsb29rcyBsaWtlIGEgY2FyZ28gY3VsdC4NCj4+DQo+
Pj4gSSB0cmllZCByZW1vdmluZyBfX3BhY2tlZCBidHcgYW5kIGRyaXZlciBubyBsb25nZXIgd29y
a3MuDQo+PiBTbywgeW91IG5lZWQgdG8gZmluZCBhIGp1c3RpZmljYXRpb24gd2h5LiBCdXQgZGVm
aW5pdGVseSBub3QgZHVlIHRvIHBhZGRpbmcgaW4NCj4+IG1hbnkgb2YgdGhlbS4gVGhleSBjYW4g
Z28gd2l0aG91dCBfX3BhY2tlZCBhcyB0aGV5IGFyZSBuYXR1cmFsbHkgYWxpZ25lZC4NCj4gQWxy
aWdodCwgSSBkaWQgc29tZSBkZWJ1Z2dpbmcsIGJhc2ljYWxseSBwcmludGsgc2l6ZW9mKHN0cnVj
dCkuIERpZCBpdCBmb3IgYm90aCBwYWNrZWQgYW5kIHVucGFja2VkIHdpdGggdGhlIGZvbGxvd2lu
ZyByZXN1bHRzOg0KPg0KPiBGZWIgMjIgMTM6MDI6MDMgTWFjQm9vayBrZXJuZWw6IHNpemUgb2Yg
c3RydWN0IGFwcGxldGJkcm1fbXNnX3JlcXVlc3RfaGVhZGVyIGlzIDE2DQo+IEZlYiAyMiAxMzow
MjowMyBNYWNCb29rIGtlcm5lbDogc2l6ZSBvZiBzdHJ1Y3QgYXBwbGV0YmRybV9tc2dfcmVxdWVz
dF9oZWFkZXJfdW5wYWNrZWQgaXMgMTYNCj4NCj4gRmViIDIyIDEzOjAyOjAzIE1hY0Jvb2sga2Vy
bmVsOiBzaXplIG9mIHN0cnVjdCBhcHBsZXRiZHJtX21zZ19yZXNwb25zZV9oZWFkZXIgaXMgMjAN
Cj4gRmViIDIyIDEzOjAyOjAzIE1hY0Jvb2sga2VybmVsOiBzaXplIG9mIHN0cnVjdCBhcHBsZXRi
ZHJtX21zZ19yZXNwb25zZV9oZWFkZXJfdW5wYWNrZWQgaXMgMjANCj4NCj4gRmViIDIyIDEzOjAy
OjAzIE1hY0Jvb2sga2VybmVsOiBzaXplIG9mIHN0cnVjdCBhcHBsZXRiZHJtX21zZ19zaW1wbGVf
cmVxdWVzdCBpcyAzMg0KPiBGZWIgMjIgMTM6MDI6MDMgTWFjQm9vayBrZXJuZWw6IHNpemUgb2Yg
c3RydWN0IGFwcGxldGJkcm1fbXNnX3NpbXBsZV9yZXF1ZXN0X3VucGFja2VkIGlzIDMyDQo+DQo+
IEZlYiAyMiAxMzowMjowMyBNYWNCb29rIGtlcm5lbDogc2l6ZSBvZiBzdHJ1Y3QgYXBwbGV0YmRy
bV9tc2dfaW5mb3JtYXRpb24gaXMgNjUNCj4gRmViIDIyIDEzOjAyOjAzIE1hY0Jvb2sga2VybmVs
OiBzaXplIG9mIHN0cnVjdCBhcHBsZXRiZHJtX21zZ19pbmZvcm1hdGlvbl91bnBhY2tlZCBpcyA2
OA0KDQpJbiB0aGUgdW5wYWNrZWQgdmVyc2lvbiwgdGhlcmUgaXMgYSAzLWJ5dGUgZ2FwIGFmdGVy
IHRoZSANCidiaXRzX3Blcl9waXhlbCcgdG8gYWxpZ24gdGhlIG5leHQgZmllbGQuIFVzaW5nIF9f
cGFja2VkIHJlbW92ZXMgdGhvc2UgDQpnYXBzIGF0IHRoZSBleHBlbnNlIG9mIHJ1bnRpbWUgb3Zl
cmhlYWQuDQo+DQo+IEZlYiAyMiAxMzowMjowMyBNYWNCb29rIGtlcm5lbDogc2l6ZSBvZiBzdHJ1
Y3QgYXBwbGV0YmRybV9mcmFtZSBpcyAxMg0KPiBGZWIgMjIgMTM6MDI6MDMgTWFjQm9vayBrZXJu
ZWw6IHNpemUgb2Ygc3RydWN0IGFwcGxldGJkcm1fZnJhbWVfdW5wYWNrZWQgaXMgMTINCj4NCj4g
RmViIDIyIDEzOjAyOjAzIE1hY0Jvb2sga2VybmVsOiBzaXplIG9mIHN0cnVjdCBhcHBsZXRiZHJt
X2ZiX3JlcXVlc3RfZm9vdGVyIGlzIDgwDQo+IEZlYiAyMiAxMzowMjowMyBNYWNCb29rIGtlcm5l
bDogc2l6ZSBvZiBzdHJ1Y3QgYXBwbGV0YmRybV9mYl9yZXF1ZXN0X2Zvb3Rlcl91bnBhY2tlZCBp
cyA4MA0KPg0KPiBGZWIgMjIgMTM6MDI6MDMgTWFjQm9vayBrZXJuZWw6IHNpemUgb2Ygc3RydWN0
IGFwcGxldGJkcm1fZmJfcmVxdWVzdCBpcyA0OA0KPiBGZWIgMjIgMTM6MDI6MDMgTWFjQm9vayBr
ZXJuZWw6IHNpemUgb2Ygc3RydWN0IGFwcGxldGJkcm1fZmJfcmVxdWVzdF91bnBhY2tlZCBpcyA0
OA0KPg0KPiBGZWIgMjIgMTM6MDI6MDMgTWFjQm9vayBrZXJuZWw6IHNpemUgb2Ygc3RydWN0IGFw
cGxldGJkcm1fZmJfcmVxdWVzdF9yZXNwb25zZSBpcyA0MA0KPiBGZWIgMjIgMTM6MDI6MDQgTWFj
Qm9vayBrZXJuZWw6IHNpemUgb2Ygc3RydWN0IGFwcGxldGJkcm1fZmJfcmVxdWVzdF9yZXNwb25z
ZV91bnBhY2tlZCBpcyA0MA0KPg0KPiBTbywgdGhlIGRpZmZlcmVuY2UgaW4gc2l6ZW9mIGluIHVu
cGFja2VkIGFuZCBwYWNrZWQgaXMgb25seSBpbiBhcHBsZXRiZHJtX21zZ19pbmZvcm1hdGlvbi4g
U28sIEkga2VwdCB0aGlzIHBhY2tlZCwgYW5kIHJlbW92ZWQgaXQgZnJvbSBvdGhlcnMuIFRoZSBU
b3VjaCBCYXIgc3RpbGwgd29ya3MuDQo+DQo+IFNvIG1heWJlIGtlZXAganVzdCB0aGlzIHBhY2tl
ZD8NCg0KVGhlIGZpZWxkcyBpbiB0aGUgVENQIGhlYWRlciBhcmUgYWxpZ25lZCBieSBkZXNpZ24u
IFVuZm9ydHVuYXRlbHksIHRoaXMgDQpoYXJkd2FyZSdzIHByb3RvY29sIGlzIG5vdC4gQW5kIHRo
ZXJlJ3Mgbm8gd2F5IG9mIGZpeGluZyB0aGlzIG5vdy4gSnVzdCANCmtlZXAgYWxsIG9mIHRoZW0g
cGFja2VkIGlmIHlvdSB3YW50LiBBdCBsZWFzdCBpdCdzIGNsZWFyIHRoZW4gd2hhdCANCmhhcHBl
bnMuIEFuZCBpZiB5b3VyIGhhcmR3YXJlIHJlcXVpcmVzIHRoaXMsIHlvdSBjYW4ndCBkbyBtdWNo
IGFueXdheS4NCg0KQmVzdCByZWdhcmRzDQpUaG9tYXMNCg0KDQo+Pg0KPj4NCj4+IC4uLg0KPj4N
Cj4+Pj4+ICsgaWYgKHJlc3BvbnNlLT5tc2cgPT0gQVBQTEVUQkRSTV9NU0dfU0lHTkFMX1JFQURJ
TkVTUykgew0KPj4+Pj4gKyBpZiAoIXJlYWRpbmVzc19zaWduYWxfcmVjZWl2ZWQpIHsNCj4+Pj4+
ICsgcmVhZGluZXNzX3NpZ25hbF9yZWNlaXZlZCA9IHRydWU7DQo+Pj4+PiArIGdvdG8gcmV0cnk7
DQo+Pj4+PiArIH0NCj4+Pj4+ICsNCj4+Pj4+ICsgZHJtX2Vycihkcm0sICJFbmNvdW50ZXJlZCB1
bmV4cGVjdGVkIHJlYWRpbmVzcyBzaWduYWxcbiIpOw0KPj4+Pj4gKyByZXR1cm4gLUVJTzsNCj4+
Pj4+ICsgfQ0KPj4+Pj4gKw0KPj4+Pj4gKyBpZiAoYWN0dWFsX3NpemUgIT0gc2l6ZSkgew0KPj4+
Pj4gKyBkcm1fZXJyKGRybSwgIkFjdHVhbCBzaXplICglZCkgZG9lc24ndCBtYXRjaCBleHBlY3Rl
ZCBzaXplICglbHUpXG4iLA0KPj4+Pj4gKyBhY3R1YWxfc2l6ZSwgc2l6ZSk7DQo+Pj4+PiArIHJl
dHVybiAtRUlPOw0KPj4+Pj4gKyB9DQo+Pj4+PiArDQo+Pj4+PiArIGlmIChyZXNwb25zZS0+bXNn
ICE9IGV4cGVjdGVkX3Jlc3BvbnNlKSB7DQo+Pj4+PiArIGRybV9lcnIoZHJtLCAiVW5leHBlY3Rl
ZCByZXNwb25zZSBmcm9tIGRldmljZSAoZXhwZWN0ZWQgJXA0Y2ggZm91bmQgJXA0Y2gpXG4iLA0K
Pj4+Pj4gKyAmZXhwZWN0ZWRfcmVzcG9uc2UsICZyZXNwb25zZS0+bXNnKTsNCj4+Pj4+ICsgcmV0
dXJuIC1FSU87DQo+Pj4+IEZvciB0aHJlZSBkaWZmZXJlbnQgY2FzZXMgdGhlIHNhbWUgZXJyb3Ig
Y29kZSwgY2FuIGl0IGJlIGFkanVzdGVkIG1vcmUgdG8gdGhlDQo+Pj4+IHNpdHVhdGlvbj8NCj4+
PiBBbGwgdGhlc2UgYXJlIEkvTyBlcnJvcnMsIHlvdSBnb3QgYW55IHN1Z2dlc3Rpb24/DQo+PiBZ
b3VyIGVtYWlsIGNsaWVudCBtYW5nbGVkIHRoZSBjb2RlIHNvIGJhZGx5IHRoYXQgaXQncyBoYXJk
IHRvIHJlYWQuIEJ1dCBJIHdvdWxkDQo+PiBzdWdnZXN0IHRvIHVzZSAtRUlOVFIgaW4gdGhlIGZp
cnN0IGNhc2UsIGFuZCAtRUJBRE1TRy4gQnV0IGFsc28geW91IG1heSBjb25zaWRlcg0KPj4gLUVQ
Uk9UTy4NCj4gVGhhbmtzDQo+Pj4+PiArIH0NCj4+IC4uLg0KPj4NCj4+Pj4+ICsgaWYgKHJldCkN
Cj4+Pj4+ICsgcmV0dXJuIHJldDsNCj4+Pj4+ICsgZWxzZSBpZiAoIW5ld19wbGFuZV9zdGF0ZS0+
dmlzaWJsZSkNCj4+Pj4gV2h5ICdlbHNlJz8gSXQncyByZWR1bmRhbnQuDQo+Pj4gSeKAmXZlIGp1
c3QgZm9sbG93ZWQgd2hhdCBvdGhlciBkcm0gZHJpdmVycyBhcmUgZG9pbmcgaGVyZToNCj4+Pg0K
Pj4+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjEzLjMvc291cmNlL2RyaXZl
cnMvZ3B1L2RybS90aW55L2JvY2hzLmMjTDQzNg0KPj4+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4u
Y29tL2xpbnV4L3Y2LjEzLjMvc291cmNlL2RyaXZlcnMvZ3B1L2RybS90aW55L2NpcnJ1cy5jI0wz
NjMNCj4+Pg0KPj4+IEFuZCBwbGVudHkgbW9yZQ0KPj4gQSBiYWQgZXhhbXBsZSBpcyBzdGlsbCBh
IGJhZCBleGFtcGxlLiAnZWxzZScgaXMgc2ltcGx5IHJlZHVuZGFudCBpbiB0aGlzDQo+PiBjYXNl
IGFuZCBhZGQgYSBub2lzeSB0byB0aGUgY29kZS4NCj4+DQo+Pj4gSSB3b27igJl0IG1pbmQgcmVt
b3ZpbmcgZWxzZS4gWW91IHdhbnQgdGhhdD8NCj4+IFN1cmUuDQo+Pg0KPj4gLi4uDQo+Pg0KPj4+
Pj4gKyByZXF1ZXN0X3NpemUgPSBBTElHTihzaXplb2Yoc3RydWN0IGFwcGxldGJkcm1fZmJfcmVx
dWVzdCkgKw0KPj4+Pj4gKyAgICAgICAgZnJhbWVzX3NpemUgKw0KPj4+Pj4gKyAgICAgICAgc2l6
ZW9mKHN0cnVjdCBhcHBsZXRiZHJtX2ZiX3JlcXVlc3RfZm9vdGVyKSwgMTYpOw0KPj4+PiBNaXNz
aW5nIGhlYWRlciBmb3IgQUxJR04oKS4NCj4+Pj4NCj4+Pj4gQnV0IGhhdmUgeW91IGNoZWNrZWQg
b3ZlcmZsb3cuaCBmb3IgdGhlIHBvc3NpYmlsaXR5IG9mIHVzaW5nIHNvbWUgaGVscGVyIG1hY3Jv
cw0KPj4+PiBmcm9tIHRoZXJlPyBUaGlzIGlzIHdoYXQgc2hvdWxkIGJlIHVzdWFsbHkgZG9uZSBm
b3IgayphbGxvYygpIGluIHRoZSBrZXJuZWwuDQo+Pj4gSSBkb27igJl0IHJlYWxseSB0aGluayB3
ZSBuZWVkIGEgbWFjcm8gaGVyZS4NCj4+IEhtbS4uLiBpcyBmcmFtZXNfc2l6ZSBrbm93biB0byBi
ZSBpbiBhIGd1YXJhbnRlZWQgcmFuZ2UgdG8gbWFrZSBzdXJlIG5vDQo+PiBwb3RlbnRpYWwgb3Zl
cmZsb3cgaGFwcGVucz8NCj4gSSBkb27igJl0IHJlYWxseSBmaW5kIGFueSBjYXVzZSBvZiBwb3Rl
bnRpYWwgb3ZlcmZsb3cuDQo+DQo+DQo+Pj4+PiArIGFwcGxldGJkcm1fc3RhdGUtPnJlcXVlc3Qg
PSBremFsbG9jKHJlcXVlc3Rfc2l6ZSwgR0ZQX0tFUk5FTCk7DQo+Pj4+PiArDQo+Pj4+PiArIGlm
ICghYXBwbGV0YmRybV9zdGF0ZS0+cmVxdWVzdCkNCj4+Pj4+ICsgcmV0dXJuIC1FTk9NRU07DQo+
PiAuLi4NCj4+DQo+Pj4+PiArIHJlcXVlc3QtPm1zZ19pZCA9IHRpbWVzdGFtcCAmIDB4ZmY7DQo+
Pj4+IFdoeSAnICYgMHhmZic/DQo+Pj4gaHR0cHM6Ly9naXRodWIuY29tL2ltYnVzaHVvL0RGUkRp
c3BsYXlLbS9ibG9iL21hc3Rlci9zcmMvREZSRGlzcGxheUttL0RmckRpc3BsYXkuYyNMMTQ3DQo+
PiBUaGlzIGlzIG5vdCBhbiBhbnN3ZXIuDQo+PiBXaHkgZG8geW91IG5lZWQgdGhpcyBoZXJlPyBJ
c24ndCB0aGUgdHlwZSBvZiBtc2dfaWQgZW5vdWdoPw0KPiBIbW0sIEkgZG91YmxlIGNoZWNrZWQg
dGhpcy4gbXNnX2lkIGlzIHU4IGluIHRoZSBMaW51eCBwb3J0IHNvIHdvdWxkIGFueXdheXMgbmV2
ZXIgZXhjZWVkIDB4ZmYuIEnigJlsbCByZW1vdmUgdGhpcy4NCj4gSXRzIGRpZmZlcmVudCBpbiB0
aGUgV2luZG93cyBkcml2ZXIuDQo+PiAuLi4NCj4+DQo+Pj4+PiArIGFkZXYtPm1vZGUgPSAoc3Ry
dWN0IGRybV9kaXNwbGF5X21vZGUpIHsNCj4+Pj4gV2h5IGRvIHlvdSBuZWVkIGEgY29tcG91bmQg
bGl0ZXJhbCBoZXJlPyBQZXJoYXBzIHlvdSB3YW50IHRvIGhhdmUgdGhhdCB0byBiZQ0KPj4+PiBk
b25lIGRpcmVjdGx5IGluIERSTV9NT0RFX0lOSVQoKT8NCj4+PiBJIHJlYWxseSBkb27igJl0IGZp
bmQgdGhpcyBhcyBhbiBpc3N1ZS4gWW91IHdhbnQgbWUgdG8gZGVjbGFyZSBhbm90aGVyIHN0cnVj
dHVyZSwgYmFzaWNhbGx5IHRoaXM/Og0KPj4gTm9wZSwgSSdtIGFza2luZyBpZiB0aGUgRFJNX01P
REVfSU5JVCgpIGlzIGRvbmUgaW4gYSB3YXkgdGhhdCBpdCBvbmx5IGNhbiBiZQ0KPj4gdXNlZCBm
b3IgdGhlIHN0YXRpYyBkYXRhLiBTZWVtcyBsaWtlIHRoZSBjYXNlLiBIYXZlIHlvdSB0cmllZCB0
byBjb252ZXJ0DQo+PiBEUk1fTU9ERV9JTklUKCkgdG8gYmUgYWx3YXlzIGEgY29tcG91bmQgbGl0
ZXJhbD8gRG9lcyBpdCBicmVhayB0aGluZ3M/DQo+IFNlZW1zIHRvIGJlIGJyZWFraW5nIHRoaW5n
cy4NCj4+PiBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSBtb2RlID0gew0KPj4+IERSTV9NT0RFX0lO
SVQoNjAsIGFkZXYtPmhlaWdodCwgYWRldi0+d2lkdGgsDQo+Pj4gRFJNX01PREVfUkVTX01NKGFk
ZXYtPmhlaWdodCwgMjE4KSwNCj4+PiBEUk1fTU9ERV9SRVNfTU0oYWRldi0+d2lkdGgsIDIxOCkp
DQo+Pj4gfTsNCj4+PiBhZGV2LT5tb2RlID0gbW9kZTsNCj4+Pg0KPj4+Pj4gKyBEUk1fTU9ERV9J
TklUKDYwLCBhZGV2LT5oZWlnaHQsIGFkZXYtPndpZHRoLA0KPj4+Pj4gKyAgICAgICBEUk1fTU9E
RV9SRVNfTU0oYWRldi0+aGVpZ2h0LCAyMTgpLA0KPj4+Pj4gKyAgICAgICBEUk1fTU9ERV9SRVNf
TU0oYWRldi0+d2lkdGgsIDIxOCkpDQo+Pj4+PiArIH07DQo+PiAtLSANCj4+IFdpdGggQmVzdCBS
ZWdhcmRzLA0KPj4gQW5keSBTaGV2Y2hlbmtvDQo+Pg0KPj4NCg0KLS0gDQotLQ0KVGhvbWFzIFpp
bW1lcm1hbm4NCkdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXINClNVU0UgU29mdHdhcmUgU29sdXRp
b25zIEdlcm1hbnkgR21iSA0KRnJhbmtlbnN0cmFzc2UgMTQ2LCA5MDQ2MSBOdWVybmJlcmcsIEdl
cm1hbnkNCkdGOiBJdm8gVG90ZXYsIEFuZHJldyBNeWVycywgQW5kcmV3IE1jRG9uYWxkLCBCb3Vk
aWVuIE1vZXJtYW4NCkhSQiAzNjgwOSAoQUcgTnVlcm5iZXJnKQ0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
