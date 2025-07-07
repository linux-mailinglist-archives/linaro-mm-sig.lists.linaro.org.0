Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 242DDAFB4A5
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Jul 2025 15:33:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 13BE043D1A
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Jul 2025 13:33:49 +0000 (UTC)
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	by lists.linaro.org (Postfix) with ESMTPS id B429F3F6DD
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Jul 2025 13:33:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=2HRdFvtm;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=9UZxAhEp;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=2HRdFvtm;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=9UZxAhEp;
	spf=pass (lists.linaro.org: domain of tzimmermann@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=tzimmermann@suse.de;
	dmarc=pass (policy=none) header.from=suse.de
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 99B3D210F9;
	Mon,  7 Jul 2025 13:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1751895213; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=chuu5gdJhTry/FYbKteVhpzSetLsEYOLr6nzGLwfKmU=;
	b=2HRdFvtmnWk/4qlRqjQacbX0wOVfu0ClTAIZu3icmvJFVHemHKwA55HMGL7lrBFGJ0S11W
	fliw5G0VohOSxJ5OhzieLCfzif2p286trQGX44ypsilNKwIcPxBD5AcraUgUfH1Cjb/K5A
	z/LtQFFfZ+AzOW7GGufLgyoWoJewquQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1751895213;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=chuu5gdJhTry/FYbKteVhpzSetLsEYOLr6nzGLwfKmU=;
	b=9UZxAhEpF7iHtiaLfd499fX6ox7Vt+Qb6Rzbl14HCglQJtWUW/GfSSa/oy8zLvi+v4BYUM
	EyO/7F8aPzTC6VDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1751895213; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=chuu5gdJhTry/FYbKteVhpzSetLsEYOLr6nzGLwfKmU=;
	b=2HRdFvtmnWk/4qlRqjQacbX0wOVfu0ClTAIZu3icmvJFVHemHKwA55HMGL7lrBFGJ0S11W
	fliw5G0VohOSxJ5OhzieLCfzif2p286trQGX44ypsilNKwIcPxBD5AcraUgUfH1Cjb/K5A
	z/LtQFFfZ+AzOW7GGufLgyoWoJewquQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1751895213;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=chuu5gdJhTry/FYbKteVhpzSetLsEYOLr6nzGLwfKmU=;
	b=9UZxAhEpF7iHtiaLfd499fX6ox7Vt+Qb6Rzbl14HCglQJtWUW/GfSSa/oy8zLvi+v4BYUM
	EyO/7F8aPzTC6VDQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 15A1F13757;
	Mon,  7 Jul 2025 13:33:33 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id ozdEA63Ma2grHAAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Mon, 07 Jul 2025 13:33:33 +0000
Message-ID: <4c1bc40d-6bd4-4102-b12f-fda320216e1d@suse.de>
Date: Mon, 7 Jul 2025 15:33:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 asrivats@redhat.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 airlied@gmail.com, simona@ffwll.ch, jean-christophe@guillain.net,
 superm1@kernel.org, satadru@gmail.com, bp@alien8.de
References: <20250707131224.249496-1-tzimmermann@suse.de>
 <a3336964-1b72-421c-b4dc-2ac3f548430b@amd.com>
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
In-Reply-To: <a3336964-1b72-421c-b4dc-2ac3f548430b@amd.com>
X-Spam-Flag: NO
X-Spam-Level: 
X-Spam-Score: -4.51
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B429F3F6DD
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.70 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.223.130/32];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	RCVD_IN_DNSWL_MED(-0.20)[195.135.223.130:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:29298, ipnet:195.135.223.0/24, country:DE];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_TO(0.00)[amd.com,redhat.com,linux.intel.com,kernel.org,gmail.com,ffwll.ch,guillain.net,alien8.de];
	RCVD_TLS_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,web.de,linaro.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	URIBL_BLOCKED(0.00)[suse.de:dkim,suse.de:mid];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Action: no action
Message-ID-Hash: V7CD6OFDHKGWR7TEFEDNFAPETBXOT3JY
X-Message-ID-Hash: V7CD6OFDHKGWR7TEFEDNFAPETBXOT3JY
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Bert Karwatzki <spasswolf@web.de>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] drm/framebuffer: Acquire internal references on GEM handles
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V7CD6OFDHKGWR7TEFEDNFAPETBXOT3JY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkNCg0KQW0gMDcuMDcuMjUgdW0gMTU6MjEgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOg0KDQo+
PiAgIA0KPj4gKyNkZWZpbmUgRFJNX0ZSQU1FQlVGRkVSX0hBU19IQU5ETEVfUkVGKF9pKQlCSVQo
MHUgKyAoX2kpKQ0KPiBXaHkgdGhlICIwdSArIChfaSkiIGhlcmU/IEFuIG1hY3JvIHRyaWNrPw0K
DQpZb3UgbWVhbiB3aHkgbm90IGp1c3QgQklUKF9pKT8gaW50ZXJuYWxfZmxhZ3MgY291bGQgcG9z
c2libHkgY29udGFpbiANCmFkZGl0aW9uYWwgZmxhZ3MuIEp1c3QgdXNpbmcgQklUKF9pKSB3b3Vs
ZCBtYWtlIGl0IGxvb2sgYXMgaWYgaXQncyBvbmx5IA0KZm9yIHRob3NlIGhhbmRsZSByZWZzLg0K
DQpCZXN0IHJlZ2FyZHMNClRob21hcw0KDQo+DQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4N
Cj4+ICsNCj4+ICAgLyoqDQo+PiAgICAqIHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgLSBmcmFtZSBi
dWZmZXIgb2JqZWN0DQo+PiAgICAqDQo+PiBAQCAtMTg4LDYgKzE5MSwxMCBAQCBzdHJ1Y3QgZHJt
X2ZyYW1lYnVmZmVyIHsNCj4+ICAgCSAqIERSTV9NT0RFX0ZCX01PRElGSUVSUy4NCj4+ICAgCSAq
Lw0KPj4gICAJaW50IGZsYWdzOw0KPj4gKwkvKioNCj4+ICsJICogQGludGVybmFsX2ZsYWdzOiBG
cmFtZWJ1ZmZlciBmbGFncyBsaWtlIERSTV9GUkFNRUJVRkZFUl9IQVNfSEFORExFX1JFRi4NCj4+
ICsJICovDQo+PiArCXVuc2lnbmVkIGludCBpbnRlcm5hbF9mbGFnczsNCj4+ICAgCS8qKg0KPj4g
ICAJICogQGZpbHBfaGVhZDogUGxhY2VkIG9uICZkcm1fZmlsZS5mYnMsIHByb3RlY3RlZCBieSAm
ZHJtX2ZpbGUuZmJzX2xvY2suDQo+PiAgIAkgKi8NCg0KLS0gDQotLQ0KVGhvbWFzIFppbW1lcm1h
bm4NCkdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXINClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdl
cm1hbnkgR21iSA0KRnJhbmtlbnN0cmFzc2UgMTQ2LCA5MDQ2MSBOdWVybmJlcmcsIEdlcm1hbnkN
CkdGOiBJdm8gVG90ZXYsIEFuZHJldyBNeWVycywgQW5kcmV3IE1jRG9uYWxkLCBCb3VkaWVuIE1v
ZXJtYW4NCkhSQiAzNjgwOSAoQUcgTnVlcm5iZXJnKQ0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
