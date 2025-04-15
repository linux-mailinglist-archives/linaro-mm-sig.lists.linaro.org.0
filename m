Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 83207A89E56
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 14:40:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 93545459AF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 12:40:22 +0000 (UTC)
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	by lists.linaro.org (Postfix) with ESMTPS id 04EDE43C8C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Apr 2025 12:40:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=eOEkr2Bc;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=H9w309eU;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=yXIbe49e;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=glknqEq5;
	spf=pass (lists.linaro.org: domain of tzimmermann@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=tzimmermann@suse.de;
	dmarc=pass (policy=none) header.from=suse.de
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id DDA7F210F4;
	Tue, 15 Apr 2025 12:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1744720805; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=jK4Eh9H6ZnAHMicDIT09c1HLtTEiBBJCncungg/b1e0=;
	b=eOEkr2Bc/8PmfTxRX/jZuED0Yov803joHTDW35rHeNHSWYeQFyYWjuH9PQsSE/BHV9jc0D
	N9tWjf02jInbtNFipWCPx4Xz4QKacMoCUqNIQUZS2RIkMCJKD8PD7pn+PsZ5pOUKEwpfGl
	OWnGx5z3BKAzjcLiJVPv/G0NYIiI3Vc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1744720805;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=jK4Eh9H6ZnAHMicDIT09c1HLtTEiBBJCncungg/b1e0=;
	b=H9w309eUFx4A1eXC4efgW6R7UTjm+5EOFYnt1otaKN7tckPRCI0unt8u8iwB+34DNU6hkQ
	LbhBoO0LMukMuvAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1744720804; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=jK4Eh9H6ZnAHMicDIT09c1HLtTEiBBJCncungg/b1e0=;
	b=yXIbe49en1VW3LQfuAeJMFmrab2uMzryCtS/Wqhv/8B4m1ZVHG8F0Czi6VUW87luQ9iDrC
	cYD77DygAn1nnkVEZKUA/cYZWtnM2N87bDeJeQRLOu+GaXqlKhFNfgXZHD0W/+wqhXX1zU
	7ucDUPkPNJdgcwglk+Znhhlc5GCpSu0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1744720804;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=jK4Eh9H6ZnAHMicDIT09c1HLtTEiBBJCncungg/b1e0=;
	b=glknqEq5qjCRJh4Y74M8NllXlXOr45QI0paAtqauR1jqYBFMRMKvbjaa8LyPGBhOG7hlrk
	LKnidA4wvI+IJCBA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 8F588137A5;
	Tue, 15 Apr 2025 12:40:04 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id OBCEIaRT/melFgAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Tue, 15 Apr 2025 12:40:04 +0000
Message-ID: <ddb93e8d-7716-47b3-b06c-0bf862d9c32b@suse.de>
Date: Tue, 15 Apr 2025 14:40:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 simona@ffwll.ch, airlied@gmail.com, asrivats@redhat.com, andyshrk@163.com,
 mripard@kernel.org, maarten.lankhorst@linux.intel.com
References: <20250415092057.63172-1-tzimmermann@suse.de>
 <e2e82102-eb9f-4eb6-8ac3-6122ed7fcf28@amd.com>
 <48ab9b82-0d26-4d7c-88b0-feab9762b128@suse.de>
 <b924ffa7-99c0-42f1-9170-069e92299021@amd.com>
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
In-Reply-To: <b924ffa7-99c0-42f1-9170-069e92299021@amd.com>
X-Spam-Level: 
X-Spam-Score: -4.30
X-Spam-Flag: NO
X-Rspamd-Queue-Id: 04EDE43C8C
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[195.135.223.130:from];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.223.130/32];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:29298, ipnet:195.135.223.0/24, country:DE];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,ffwll.ch,gmail.com,redhat.com,163.com,kernel.org,linux.intel.com];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	URIBL_BLOCKED(0.00)[linaro.org:email,lists.freedesktop.org:email,suse.de:dkim,suse.de:mid,suse.de:email,amd.com:email];
	DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: OQGYBNRQDWCIWFVDOC5GMMJHKBII5S4C
X-Message-ID-Hash: OQGYBNRQDWCIWFVDOC5GMMJHKBII5S4C
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/gem: Internally test import_attach for imported objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OQGYBNRQDWCIWFVDOC5GMMJHKBII5S4C/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkNCg0KQW0gMTUuMDQuMjUgdW0gMTQ6MTkgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOg0KPiBB
bSAxNS4wNC4yNSB1bSAxMjo0NSBzY2hyaWViIFRob21hcyBaaW1tZXJtYW5uOg0KPj4gSGkNCj4+
DQo+PiBBbSAxNS4wNC4yNSB1bSAxMTozOSBzY2hyaWViIENocmlzdGlhbiBLw7ZuaWc6DQo+Pj4g
QW0gMTUuMDQuMjUgdW0gMTE6MjAgc2NocmllYiBUaG9tYXMgWmltbWVybWFubjoNCj4+Pj4gVGVz
dCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QuaW1wb3J0X2F0dGFjaCB0byBkZXRlY3QgaW1wb3J0ZWQg
b2JqZWN0cw0KPj4+PiBkdXJpbmcgY2xlYW51cC4gQXQgdGhhdCBwb2ludCwgdGhlIGltcG9ydGVk
IERNQSBidWZmZXIgbWlnaHQgaGF2ZQ0KPj4+PiBhbHJlYWR5IGJlZW4gcmVsZWFzZWQgYW5kIHRo
ZSBkbWFfYnVmIGZpZWxkIGlzIE5VTEwuIFRoZSBvYmplY3Qncw0KPj4+PiBmcmVlIGNhbGxiYWNr
IHRoZW4gZG9lcyBhIGNsZWFudXAgYXMgZm9yIG5hdGl2ZSBvYmplY3RzLg0KPj4+IEkgZG9uJ3Qg
dGhpbmsgdGhhdCB0aGlzIGlzIGEgZ29vZCBpZGVhLg0KPj4+DQo+Pj4gVGhlIERNQS1idWYgaXMg
c2VwYXJhdGVseSByZWZlcmVuY2UgY291bnRlZCB0aHJvdWdoIHRoZSBpbXBvcnQgYXR0YWNobWVu
dC4NCj4+IEkgdW5kZXJzdGFuZCB0aGF0IGl0J3Mgbm90IGlkZWFsLCBidXQgdGVzdGluZyBmb3Ig
aW1wb3J0X2F0dGFjaCB0byBiZSBzZXQgaXMgd2hhdCB3ZSBjdXJyZW50bHkgZG8gdGhyb3VnaG91
dCBkcml2ZXJzLiBQdXR0aW5nIHRoaXMgYmVoaW5kIGFuIGludGVyZmFjZSBpcyBhbHJlYWR5IGEg
c3RlcCBmb3J3YXJkLg0KPj4NCj4+Pj4gSGFwcGVucyBmb3IgY2FsbHMgdG8gZHJtX21vZGVfZGVz
dHJveV9kdW1iX2lvY3RsKCkgdGhhdCBldmVudHVhbGx5DQo+Pj4+IGNsZWFyIHRoZSBkbWFfYnVm
IGZpZWxkIGluIGRybV9nZW1fb2JqZWN0X2V4cG9ydGVkX2RtYV9idWZfZnJlZSgpLg0KPj4+IFRo
YXQgaXMgZm9yIGV4cG9ydGVkIERNQS1idWYgYW5kIHNob3VsZCAqTkVWRVIqIGJlIHVzZWQgZm9y
IGltcG9ydGVkIG9uZXMuDQo+PiBEaWQgeW91IGxvb2sgYXQgdGhlIGRpc2N1c3Npb24gYXQgdGhl
IENsb3NlcyB0YWc/IFdoZXJlIGVsc2UgY291bGQgZG1hLWJ1ZiBiZSBjbGVhcmVkPw0KPiBZZWFo
LCBJJ3ZlIHNlZW4gdGhhdC4gVGhlIHNvbHV0aW9uIGlzIGp1c3QgY29tcGxldGVseSB3cm9uZy4N
Cj4NCj4gU2VlIGZvciB0aGUgZXhwb3J0IGNhc2Ugb2JqLT5kbWFfYnVmIHBvaW50cyB0byB0aGUg
ZXhwb3J0ZWQgRE1BLWJ1ZiBhbmQgY2F1c2VzIGEgY2lyY2xlIGRlcGVuZGVuY3kgd2hlbiBub3Qg
c2V0IHRvIE5VTEwgd2hlbiB0aGUgbGFzdCBoYW5kbGUgaXMgcmVsZWFzZWQuDQo+DQo+IEJ1dCBm
b3IgdGhlIGltcG9ydCBjYXNlIG9iai0+ZG1hX2J1ZiBpcyBhY3R1YWxseSBub3QgdGhhdCByZWxl
dmFudC4gSW5zdGVhZCBvYmotPmltcG9ydF9hdHRhY2gtPmRtYV9idWYgc2hvdWxkIGJlIHVzZWQu
DQoNClNvIGlmIEkgdW5kZXJzdGFuZCBjb3JyZWN0bHksIHRoZSB0ZXN0cyBpbiB0aGF0IGhlbHBl
ciBzaG91bGQgYmUgZG9uZSBieSANCmxvb2tpbmcgYXQgaW1wb3J0X2F0dGFjaC0+ZG1hX2J1Zi4N
Cg0KVGhlIGxvbmctdGVybSBnb2FsIGlzIHRvIG1ha2UgaW1wb3J0X2F0dGFjaCBvcHRpb25hbCBi
ZWNhdXNlIGl0cyBzZXR1cCANCnJlcXVpcmVzIGEgRE1BLWNhcGFibGUgZGV2aWNlLg0KDQpCZXN0
IHJlZ2FyZHMNClRob21hcw0KDQo+DQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4NCj4+IEJl
c3QgcmVnYXJkcw0KPj4gVGhvbWFzDQo+Pg0KPj4+IFJlZ2FyZHMsDQo+Pj4gQ2hyaXN0aWFuLg0K
Pj4+DQo+Pj4+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBz
dXNlLmRlPg0KPj4+PiBGaXhlczogYjU3YWE0N2QzOWU5ICgiZHJtL2dlbTogVGVzdCBmb3IgaW1w
b3J0ZWQgR0VNIGJ1ZmZlcnMgd2l0aCBoZWxwZXIiKQ0KPj4+PiBSZXBvcnRlZC1ieTogQW5keSBZ
YW4gPGFuZHlzaHJrQDE2My5jb20+DQo+Pj4+IENsb3NlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvZHJpLWRldmVsLzM4ZDA5ZDM0LjQzNTQuMTk2Mzc5YWE1NjAuQ29yZW1haWwuYW5keXNocmtA
MTYzLmNvbS8NCj4+Pj4gVGVzdGVkLWJ5OiBBbmR5IFlhbiA8YW5keXNocmtAMTYzLmNvbT4NCj4+
Pj4gQ2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KPj4+PiBDYzog
QW51c2hhIFNyaXZhdHNhIDxhc3JpdmF0c0ByZWRoYXQuY29tPg0KPj4+PiBDYzogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4+PiBDYzogTWFhcnRlbiBMYW5r
aG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4NCj4+Pj4gQ2M6IE1heGlt
ZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4NCj4+Pj4gQ2M6IERhdmlkIEFpcmxpZSA8YWly
bGllZEBnbWFpbC5jb20+DQo+Pj4+IENjOiBTaW1vbmEgVmV0dGVyIDxzaW1vbmFAZmZ3bGwuY2g+
DQo+Pj4+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KPj4+PiBD
YzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+Pj4+IENj
OiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+Pj4+IENjOiBsaW51eC1tZWRpYUB2
Z2VyLmtlcm5lbC5vcmcNCj4+Pj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0K
Pj4+PiAtLS0NCj4+Pj4gIMKgIGluY2x1ZGUvZHJtL2RybV9nZW0uaCB8IDggKysrKysrKy0NCj4+
Pj4gIMKgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4+
Pj4NCj4+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9nZW0uaCBiL2luY2x1ZGUvZHJt
L2RybV9nZW0uaA0KPj4+PiBpbmRleCA5YjcxZjdhOWYzZjguLmYwOWI4YWZjZjg2ZCAxMDA2NDQN
Cj4+Pj4gLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2dlbS5oDQo+Pj4+ICsrKyBiL2luY2x1ZGUvZHJt
L2RybV9nZW0uaA0KPj4+PiBAQCAtNTg5LDcgKzU4OSwxMyBAQCBzdGF0aWMgaW5saW5lIGJvb2wg
ZHJtX2dlbV9vYmplY3RfaXNfc2hhcmVkX2Zvcl9tZW1vcnlfc3RhdHMoc3RydWN0IGRybV9nZW1f
b2JqZQ0KPj4+PiAgwqAgc3RhdGljIGlubGluZSBib29sIGRybV9nZW1faXNfaW1wb3J0ZWQoY29u
c3Qgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopDQo+Pj4+ICDCoCB7DQo+Pj4+ICDCoMKgwqDC
oMKgIC8qIFRoZSBkbWEtYnVmJ3MgcHJpdiBmaWVsZCBwb2ludHMgdG8gdGhlIG9yaWdpbmFsIEdF
TSBvYmplY3QuICovDQo+Pj4+IC3CoMKgwqAgcmV0dXJuIG9iai0+ZG1hX2J1ZiAmJiAob2JqLT5k
bWFfYnVmLT5wcml2ICE9IG9iaik7DQo+Pj4+ICvCoMKgwqAgcmV0dXJuIChvYmotPmRtYV9idWYg
JiYgKG9iai0+ZG1hX2J1Zi0+cHJpdiAhPSBvYmopKSB8fA0KPj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqAgLyoNCj4+Pj4gK8KgwqDCoMKgwqDCoMKgICogVE9ETzogRHVyaW5nIG9iamVjdCByZWxl
YXNlLCB0aGUgZG1hLWJ1ZiBtaWdodCBhbHJlYWR5DQo+Pj4+ICvCoMKgwqDCoMKgwqDCoCAqwqDC
oMKgwqDCoMKgIGJlIGdvbmUuIEZvciBub3cga2VlcCB0ZXN0aW5nIGltcG9ydF9hdHRhY2gsIGJ1
dA0KPj4+PiArwqDCoMKgwqDCoMKgwqAgKsKgwqDCoMKgwqDCoCB0aGlzIHNob3VsZCBiZSByZW1v
dmVkIGF0IHNvbWUgcG9pbnQuDQo+Pj4+ICvCoMKgwqDCoMKgwqDCoCAqLw0KPj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqAgb2JqLT5pbXBvcnRfYXR0YWNoOw0KPj4+PiAgwqAgfQ0KPj4+PiAgwqAg
wqAgI2lmZGVmIENPTkZJR19MT0NLREVQDQoNCi0tIA0KLS0NClRob21hcyBaaW1tZXJtYW5uDQpH
cmFwaGljcyBEcml2ZXIgRGV2ZWxvcGVyDQpTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55
IEdtYkgNCkZyYW5rZW5zdHJhc3NlIDE0NiwgOTA0NjEgTnVlcm5iZXJnLCBHZXJtYW55DQpHRjog
SXZvIFRvdGV2LCBBbmRyZXcgTXllcnMsIEFuZHJldyBNY0RvbmFsZCwgQm91ZGllbiBNb2VybWFu
DQpIUkIgMzY4MDkgKEFHIE51ZXJuYmVyZykNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
