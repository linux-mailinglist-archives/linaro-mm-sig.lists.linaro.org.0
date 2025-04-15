Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BD578A89F26
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 15:15:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 51DD9410EA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 13:14:58 +0000 (UTC)
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	by lists.linaro.org (Postfix) with ESMTPS id 92CBA410EA
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Apr 2025 13:14:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=EM2cNif7;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b="NmUwUYm/";
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=EM2cNif7;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b="NmUwUYm/";
	spf=pass (lists.linaro.org: domain of tzimmermann@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=tzimmermann@suse.de;
	dmarc=pass (policy=none) header.from=suse.de
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 703BB21169;
	Tue, 15 Apr 2025 13:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1744722880; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=Se5jHxUz0IwEvCNsGEEKC5CnNqrVllaEpKYdOMi4hG4=;
	b=EM2cNif7pMJAvLOZvr3Brj6+c+/xKV5r2g6ziYHB88timYd4Ed1k8KlbdTCXDWTnMzgBqG
	EDen88W9TXkuoeUrhtdKt2WIggrksJefWHKweLPNaGRHaCPAFhjaPzCQL3apZykJKnPXlx
	WYWp5x0+klpud7fCvKie0U3HcLw1ItI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1744722880;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=Se5jHxUz0IwEvCNsGEEKC5CnNqrVllaEpKYdOMi4hG4=;
	b=NmUwUYm/yIv31sPY2fPSQiSSRxGGUbZ+gb0rxQj1fzY5O3Q0zIaI/RoiJLxsZhte/PyHLI
	PqV41dBhdktSI6BQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1744722880; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=Se5jHxUz0IwEvCNsGEEKC5CnNqrVllaEpKYdOMi4hG4=;
	b=EM2cNif7pMJAvLOZvr3Brj6+c+/xKV5r2g6ziYHB88timYd4Ed1k8KlbdTCXDWTnMzgBqG
	EDen88W9TXkuoeUrhtdKt2WIggrksJefWHKweLPNaGRHaCPAFhjaPzCQL3apZykJKnPXlx
	WYWp5x0+klpud7fCvKie0U3HcLw1ItI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1744722880;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=Se5jHxUz0IwEvCNsGEEKC5CnNqrVllaEpKYdOMi4hG4=;
	b=NmUwUYm/yIv31sPY2fPSQiSSRxGGUbZ+gb0rxQj1fzY5O3Q0zIaI/RoiJLxsZhte/PyHLI
	PqV41dBhdktSI6BQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 1FB6E137A5;
	Tue, 15 Apr 2025 13:14:40 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id sHUWBsBb/meiIQAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Tue, 15 Apr 2025 13:14:40 +0000
Message-ID: <704bd885-c3ae-4d14-99c3-9fce797a29cb@suse.de>
Date: Tue, 15 Apr 2025 15:14:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 simona@ffwll.ch, airlied@gmail.com, asrivats@redhat.com, andyshrk@163.com,
 mripard@kernel.org, maarten.lankhorst@linux.intel.com
References: <20250415092057.63172-1-tzimmermann@suse.de>
 <e2e82102-eb9f-4eb6-8ac3-6122ed7fcf28@amd.com>
 <48ab9b82-0d26-4d7c-88b0-feab9762b128@suse.de>
 <b924ffa7-99c0-42f1-9170-069e92299021@amd.com>
 <ddb93e8d-7716-47b3-b06c-0bf862d9c32b@suse.de>
 <ac0aba3d-ec77-4f6b-9ac1-f6077519f30d@amd.com>
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
In-Reply-To: <ac0aba3d-ec77-4f6b-9ac1-f6077519f30d@amd.com>
X-Spam-Score: -4.51
X-Spam-Flag: NO
X-Spam-Level: 
X-Rspamd-Queue-Id: 92CBA410EA
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[195.135.223.130:from];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.223.130/32];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:29298, ipnet:195.135.223.0/24, country:DE];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[amd.com,ffwll.ch,gmail.com,redhat.com,163.com,kernel.org,linux.intel.com];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[intel.com:email,amd.com:email,ffwll.ch:email,suse.de:dkim,suse.de:mid,suse.de:email,lists.freedesktop.org:email,smtp-out1.suse.de:helo,smtp-out1.suse.de:rdns];
	DNSWL_BLOCKED(0.00)[195.135.223.130:from,2a07:de40:b281:104:10:150:64:97:received,2a07:de40:b281:106:10:150:64:167:received];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: V53JVQLGCKKAW2YGTGNUMYCDYA3QVN7D
X-Message-ID-Hash: V53JVQLGCKKAW2YGTGNUMYCDYA3QVN7D
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/gem: Internally test import_attach for imported objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V53JVQLGCKKAW2YGTGNUMYCDYA3QVN7D/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkNCg0KQW0gMTUuMDQuMjUgdW0gMTQ6NTIgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOg0KPiBB
bSAxNS4wNC4yNSB1bSAxNDo0MCBzY2hyaWViIFRob21hcyBaaW1tZXJtYW5uOg0KPj4gSGkNCj4+
DQo+PiBBbSAxNS4wNC4yNSB1bSAxNDoxOSBzY2hyaWViIENocmlzdGlhbiBLw7ZuaWc6DQo+Pj4g
QW0gMTUuMDQuMjUgdW0gMTI6NDUgc2NocmllYiBUaG9tYXMgWmltbWVybWFubjoNCj4+Pj4gSGkN
Cj4+Pj4NCj4+Pj4gQW0gMTUuMDQuMjUgdW0gMTE6Mzkgc2NocmllYiBDaHJpc3RpYW4gS8O2bmln
Og0KPj4+Pj4gQW0gMTUuMDQuMjUgdW0gMTE6MjAgc2NocmllYiBUaG9tYXMgWmltbWVybWFubjoN
Cj4+Pj4+PiBUZXN0IHN0cnVjdCBkcm1fZ2VtX29iamVjdC5pbXBvcnRfYXR0YWNoIHRvIGRldGVj
dCBpbXBvcnRlZCBvYmplY3RzDQo+Pj4+Pj4gZHVyaW5nIGNsZWFudXAuIEF0IHRoYXQgcG9pbnQs
IHRoZSBpbXBvcnRlZCBETUEgYnVmZmVyIG1pZ2h0IGhhdmUNCj4+Pj4+PiBhbHJlYWR5IGJlZW4g
cmVsZWFzZWQgYW5kIHRoZSBkbWFfYnVmIGZpZWxkIGlzIE5VTEwuIFRoZSBvYmplY3Qncw0KPj4+
Pj4+IGZyZWUgY2FsbGJhY2sgdGhlbiBkb2VzIGEgY2xlYW51cCBhcyBmb3IgbmF0aXZlIG9iamVj
dHMuDQo+Pj4+PiBJIGRvbid0IHRoaW5rIHRoYXQgdGhpcyBpcyBhIGdvb2QgaWRlYS4NCj4+Pj4+
DQo+Pj4+PiBUaGUgRE1BLWJ1ZiBpcyBzZXBhcmF0ZWx5IHJlZmVyZW5jZSBjb3VudGVkIHRocm91
Z2ggdGhlIGltcG9ydCBhdHRhY2htZW50Lg0KPj4+PiBJIHVuZGVyc3RhbmQgdGhhdCBpdCdzIG5v
dCBpZGVhbCwgYnV0IHRlc3RpbmcgZm9yIGltcG9ydF9hdHRhY2ggdG8gYmUgc2V0IGlzIHdoYXQg
d2UgY3VycmVudGx5IGRvIHRocm91Z2hvdXQgZHJpdmVycy4gUHV0dGluZyB0aGlzIGJlaGluZCBh
biBpbnRlcmZhY2UgaXMgYWxyZWFkeSBhIHN0ZXAgZm9yd2FyZC4NCj4+Pj4NCj4+Pj4+PiBIYXBw
ZW5zIGZvciBjYWxscyB0byBkcm1fbW9kZV9kZXN0cm95X2R1bWJfaW9jdGwoKSB0aGF0IGV2ZW50
dWFsbHkNCj4+Pj4+PiBjbGVhciB0aGUgZG1hX2J1ZiBmaWVsZCBpbiBkcm1fZ2VtX29iamVjdF9l
eHBvcnRlZF9kbWFfYnVmX2ZyZWUoKS4NCj4+Pj4+IFRoYXQgaXMgZm9yIGV4cG9ydGVkIERNQS1i
dWYgYW5kIHNob3VsZCAqTkVWRVIqIGJlIHVzZWQgZm9yIGltcG9ydGVkIG9uZXMuDQo+Pj4+IERp
ZCB5b3UgbG9vayBhdCB0aGUgZGlzY3Vzc2lvbiBhdCB0aGUgQ2xvc2VzIHRhZz8gV2hlcmUgZWxz
ZSBjb3VsZCBkbWEtYnVmIGJlIGNsZWFyZWQ/DQo+Pj4gWWVhaCwgSSd2ZSBzZWVuIHRoYXQuIFRo
ZSBzb2x1dGlvbiBpcyBqdXN0IGNvbXBsZXRlbHkgd3JvbmcuDQo+Pj4NCj4+PiBTZWUgZm9yIHRo
ZSBleHBvcnQgY2FzZSBvYmotPmRtYV9idWYgcG9pbnRzIHRvIHRoZSBleHBvcnRlZCBETUEtYnVm
IGFuZCBjYXVzZXMgYSBjaXJjbGUgZGVwZW5kZW5jeSB3aGVuIG5vdCBzZXQgdG8gTlVMTCB3aGVu
IHRoZSBsYXN0IGhhbmRsZSBpcyByZWxlYXNlZC4NCj4+Pg0KPj4+IEJ1dCBmb3IgdGhlIGltcG9y
dCBjYXNlIG9iai0+ZG1hX2J1ZiBpcyBhY3R1YWxseSBub3QgdGhhdCByZWxldmFudC4gSW5zdGVh
ZCBvYmotPmltcG9ydF9hdHRhY2gtPmRtYV9idWYgc2hvdWxkIGJlIHVzZWQuDQo+PiBTbyBpZiBJ
IHVuZGVyc3RhbmQgY29ycmVjdGx5LCB0aGUgdGVzdHMgaW4gdGhhdCBoZWxwZXIgc2hvdWxkIGJl
IGRvbmUgYnkgbG9va2luZyBhdCBpbXBvcnRfYXR0YWNoLT5kbWFfYnVmLg0KPiBBdCBsZWFzdCBp
biB0aGVvcnkgeWVzLiBJSVJDIHdlIGFsc28gc2V0IG9iai0+ZG1hX2J1ZiB0byB0aGUgc2FtZSB2
YWx1ZSBhcyBpbXBvcnRfYXR0YWNoLT5kbWFfYnVmIGZvciBjb252ZW5pZW50IHNvIHRoYXQgY29k
ZSBkb2Vzbid0IG5lZWQgdG8gY2hlY2sgYm90aC4NCj4NCj4gQnV0IGl0IGNhbiBiZSB0aGF0IG9i
ai0+ZG1hX2J1ZiBpcyBhbHJlYWR5IE5VTEwgd2hpbGUgdGhlIGltcG9ydCBhdHRhY2htZW50IGlz
IHN0aWxsIGluIHRoZSBwcm9jZXNzIG9mIGJlaW5nIGNsZWFuZWQgdXAuIFNvIHRoZXJlIGFyZSBh
IGNvdXBsZSBvZiBjYXNlcyB3aGVyZSB3ZSBoYXZlIHRvIGxvb2sgYXQgb2JqLT5pbXBvcnRfYXR0
YWNoLT5kbWFfYnVmLg0KDQpPaywgdGhhdCBzaG91bGQgYWxzbyBzb2x2ZSB0aGUgcHJvYmxlbSBm
b3Igbm93LiBUaGUgcG9pbnQgaGVyZSBpcyB0byANCmxpbWl0IGV4cG9zdXJlIG9mIGltcG9ydF9h
dHRhY2guDQoNCj4NCj4+IFRoZSBsb25nLXRlcm0gZ29hbCBpcyB0byBtYWtlIGltcG9ydF9hdHRh
Y2ggb3B0aW9uYWwgYmVjYXVzZSBpdHMgc2V0dXAgcmVxdWlyZXMgYSBETUEtY2FwYWJsZSBkZXZp
Y2UuDQo+IEhVSSBXSEFUPw0KPg0KPiBEbWl0cnkgYW5kIEkgcHV0IHF1aXRlIHNvbWUgZWZmb3J0
IGludG8gYmVpbmcgYWJsZSB0byBjcmVhdGUgYW4gaW1wb3J0X2F0dGFjaCB3aXRob3V0IHRoZSBy
ZXF1aXJlbWVudCB0byBoYXZlIGEgRE1BLWNhcGFibGUgZGV2aWNlLg0KPg0KPiBUaGUgbGFzdCBw
dXp6bGUgcGllY2Ugb2YgdGhhdCBsYW5kZWQgYSBtb250aCBhZ28gaW4gdGhlIGZvcm0gb2YgdGhp
cyBwYXRjaCBoZXJlOg0KPg0KPiBjb21taXQgYjcyZjY2ZjIyYzBlMzlhZTY2ODRjNDNmZWFkNzc0
YzEzZGIyNGU3Mw0KPiBBdXRob3I6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4NCj4gRGF0ZTrCoMKgIFR1ZSBGZWIgMTEgMTc6MjA6NTMgMjAyNSArMDEwMA0KPg0K
PiAgwqDCoMKgIGRtYS1idWY6IGRyb3AgY2FjaGluZyBvZiBzZ190YWJsZXMNCj4gICAgICANCj4g
IMKgwqDCoCBUaGF0IHdhcyBwdXJlbHkgZm9yIHRoZSB0cmFuc2l0aW9uIGZyb20gc3RhdGljIHRv
IGR5bmFtaWMgZG1hLWJ1Zg0KPiAgwqDCoMKgIGhhbmRsaW5nIGFuZCBjYW4gYmUgcmVtb3ZlZCBh
Z2FpbiBub3cuDQo+ICAgICAgDQo+ICDCoMKgwqAgU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiAgwqDCoMKgIFJldmlld2VkLWJ5OiBT
aW1vbmEgVmV0dGVyIDxzaW1vbmEudmV0dGVyQGZmd2xsLmNoPg0KPiAgwqDCoMKgIFJldmlld2Vk
LWJ5OiBEbWl0cnkgT3NpcGVua28gPGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPg0KPiAg
wqDCoMKgIExpbms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dp
ZC8yMDI1MDIxMTE2MzEwOS4xMjIwMC01LWNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbQ0KPg0KPiBX
aGVuIHlvdSBkb24ndCBjcmVhdGUgYW4gaW1wb3J0IGF0dGFjaG1lbnQgdGhlIGV4cG9ydGVyIHdv
dWxkbid0IGtub3cgdGhhdCBoaXMgYnVmZmVyIGlzIGFjdHVhbGx5IHVzZWQgd2hpY2ggaXMgdXN1
YWxseSBhIHF1aXRlIGJhZCBpZGVhLg0KPg0KPiBUaGlzIGlzIGZvciBkZXZpY2VzIHdobyBvbmx5
IHdhbnQgdG8gZG8gYSB2bWFwIG9mIHRoZSBidWZmZXIsIGlzbid0IGl0Pw0KDQpZZWFoLCB0aGUg
dm1hcCBuZWVkcyB0aGUgc2d0YWJsZSwgd2hpY2ggbmVlZHMgaW1wb3J0X2F0dGFjaCBJSVJDLiAN
ClNvbWV3aGVyZSBpbiB0aGVyZSBhIERNQSBkZXZpY2UgaXMgcmVxdWlyZWQuIEJ1dCBpdCdzIG5v
dCBvZiBoaWdoIA0KcHJpb3JpdHkgYXMgd2UgaGF2ZSB3b3JrYXJvdW5kcy4NCg0KQmVzdCByZWdh
cmRzDQpUaG9tYXMNCg0KPg0KPiBSZWdhcmRzLA0KPiBDaHJpc3RpYW4uDQo+DQo+PiBCZXN0IHJl
Z2FyZHMNCj4+IFRob21hcw0KPj4NCj4+PiBSZWdhcmRzLA0KPj4+IENocmlzdGlhbi4NCj4+Pg0K
Pj4+PiBCZXN0IHJlZ2FyZHMNCj4+Pj4gVGhvbWFzDQo+Pj4+DQo+Pj4+PiBSZWdhcmRzLA0KPj4+
Pj4gQ2hyaXN0aWFuLg0KPj4+Pj4NCj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgWmltbWVy
bWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4NCj4+Pj4+PiBGaXhlczogYjU3YWE0N2QzOWU5ICgi
ZHJtL2dlbTogVGVzdCBmb3IgaW1wb3J0ZWQgR0VNIGJ1ZmZlcnMgd2l0aCBoZWxwZXIiKQ0KPj4+
Pj4+IFJlcG9ydGVkLWJ5OiBBbmR5IFlhbiA8YW5keXNocmtAMTYzLmNvbT4NCj4+Pj4+PiBDbG9z
ZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8zOGQwOWQzNC40MzU0LjE5NjM3
OWFhNTYwLkNvcmVtYWlsLmFuZHlzaHJrQDE2My5jb20vDQo+Pj4+Pj4gVGVzdGVkLWJ5OiBBbmR5
IFlhbiA8YW5keXNocmtAMTYzLmNvbT4NCj4+Pj4+PiBDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6
aW1tZXJtYW5uQHN1c2UuZGU+DQo+Pj4+Pj4gQ2M6IEFudXNoYSBTcml2YXRzYSA8YXNyaXZhdHNA
cmVkaGF0LmNvbT4NCj4+Pj4+PiBDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPg0KPj4+Pj4+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9y
c3RAbGludXguaW50ZWwuY29tPg0KPj4+Pj4+IENjOiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtl
cm5lbC5vcmc+DQo+Pj4+Pj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBnbWFpbC5jb20+DQo+
Pj4+Pj4gQ2M6IFNpbW9uYSBWZXR0ZXIgPHNpbW9uYUBmZndsbC5jaD4NCj4+Pj4+PiBDYzogU3Vt
aXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCj4+Pj4+PiBDYzogIkNocmlzdGlh
biBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+Pj4+Pj4gQ2M6IGRyaS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4+Pj4+PiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJu
ZWwub3JnDQo+Pj4+Pj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KPj4+Pj4+
IC0tLQ0KPj4+Pj4+ICDCoMKgIGluY2x1ZGUvZHJtL2RybV9nZW0uaCB8IDggKysrKysrKy0NCj4+
Pj4+PiAgwqDCoCAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
DQo+Pj4+Pj4NCj4+Pj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX2dlbS5oIGIvaW5j
bHVkZS9kcm0vZHJtX2dlbS5oDQo+Pj4+Pj4gaW5kZXggOWI3MWY3YTlmM2Y4Li5mMDliOGFmY2Y4
NmQgMTAwNjQ0DQo+Pj4+Pj4gLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2dlbS5oDQo+Pj4+Pj4gKysr
IGIvaW5jbHVkZS9kcm0vZHJtX2dlbS5oDQo+Pj4+Pj4gQEAgLTU4OSw3ICs1ODksMTMgQEAgc3Rh
dGljIGlubGluZSBib29sIGRybV9nZW1fb2JqZWN0X2lzX3NoYXJlZF9mb3JfbWVtb3J5X3N0YXRz
KHN0cnVjdCBkcm1fZ2VtX29iamUNCj4+Pj4+PiAgwqDCoCBzdGF0aWMgaW5saW5lIGJvb2wgZHJt
X2dlbV9pc19pbXBvcnRlZChjb25zdCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikNCj4+Pj4+
PiAgwqDCoCB7DQo+Pj4+Pj4gIMKgwqDCoMKgwqDCoCAvKiBUaGUgZG1hLWJ1ZidzIHByaXYgZmll
bGQgcG9pbnRzIHRvIHRoZSBvcmlnaW5hbCBHRU0gb2JqZWN0LiAqLw0KPj4+Pj4+IC3CoMKgwqAg
cmV0dXJuIG9iai0+ZG1hX2J1ZiAmJiAob2JqLT5kbWFfYnVmLT5wcml2ICE9IG9iaik7DQo+Pj4+
Pj4gK8KgwqDCoCByZXR1cm4gKG9iai0+ZG1hX2J1ZiAmJiAob2JqLT5kbWFfYnVmLT5wcml2ICE9
IG9iaikpIHx8DQo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIC8qDQo+Pj4+Pj4gK8KgwqDC
oMKgwqDCoMKgICogVE9ETzogRHVyaW5nIG9iamVjdCByZWxlYXNlLCB0aGUgZG1hLWJ1ZiBtaWdo
dCBhbHJlYWR5DQo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgICrCoMKgwqDCoMKgwqAgYmUgZ29uZS4g
Rm9yIG5vdyBrZWVwIHRlc3RpbmcgaW1wb3J0X2F0dGFjaCwgYnV0DQo+Pj4+Pj4gK8KgwqDCoMKg
wqDCoMKgICrCoMKgwqDCoMKgwqAgdGhpcyBzaG91bGQgYmUgcmVtb3ZlZCBhdCBzb21lIHBvaW50
Lg0KPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCAqLw0KPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oCBvYmotPmltcG9ydF9hdHRhY2g7DQo+Pj4+Pj4gIMKgwqAgfQ0KPj4+Pj4+ICDCoMKgIMKgICNp
ZmRlZiBDT05GSUdfTE9DS0RFUA0KDQotLSANCi0tDQpUaG9tYXMgWmltbWVybWFubg0KR3JhcGhp
Y3MgRHJpdmVyIERldmVsb3Blcg0KU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJI
DQpGcmFua2Vuc3RyYXNzZSAxNDYsIDkwNDYxIE51ZXJuYmVyZywgR2VybWFueQ0KR0Y6IEl2byBU
b3RldiwgQW5kcmV3IE15ZXJzLCBBbmRyZXcgTWNEb25hbGQsIEJvdWRpZW4gTW9lcm1hbg0KSFJC
IDM2ODA5IChBRyBOdWVybmJlcmcpDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
