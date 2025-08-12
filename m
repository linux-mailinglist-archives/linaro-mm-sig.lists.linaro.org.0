Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F302B22829
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Aug 2025 15:18:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 33ABF44D1E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Aug 2025 13:18:58 +0000 (UTC)
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	by lists.linaro.org (Postfix) with ESMTPS id D87C03F6EF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Aug 2025 13:18:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=UtgZG6G5;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=EA6BljAq;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=UtgZG6G5;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=EA6BljAq;
	spf=pass (lists.linaro.org: domain of tzimmermann@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=tzimmermann@suse.de;
	dmarc=pass (policy=none) header.from=suse.de
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id CC4501F45B;
	Tue, 12 Aug 2025 13:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1755004725; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=QRs3Lbu/CyqX1NOfs/4bvgoB0mLNEji8vX3OaJ0mTX4=;
	b=UtgZG6G5F8rqx8Eco59BNijBiVIzfrqtFnvstXMUCNL+8EFQbibfyUQ9pZRxJxcnxp59u2
	aS5wl8OE2RrAvVXODJXnueVN1XstL9/3O9eMGqcdZb3ep4JMMJRZ14iDr5vgbTibmNL9He
	Tsd4CeE998lnUXFTk6ZQU3cmCm9Q/pA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1755004725;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=QRs3Lbu/CyqX1NOfs/4bvgoB0mLNEji8vX3OaJ0mTX4=;
	b=EA6BljAqZc1barv1BCS9HXZcaH+ZI3vv7ku4o303GZb+vY9WXLnxZsjsvTVnoI+m8GbtsR
	ODaMLDHlGkQI8+Bg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1755004725; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=QRs3Lbu/CyqX1NOfs/4bvgoB0mLNEji8vX3OaJ0mTX4=;
	b=UtgZG6G5F8rqx8Eco59BNijBiVIzfrqtFnvstXMUCNL+8EFQbibfyUQ9pZRxJxcnxp59u2
	aS5wl8OE2RrAvVXODJXnueVN1XstL9/3O9eMGqcdZb3ep4JMMJRZ14iDr5vgbTibmNL9He
	Tsd4CeE998lnUXFTk6ZQU3cmCm9Q/pA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1755004725;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=QRs3Lbu/CyqX1NOfs/4bvgoB0mLNEji8vX3OaJ0mTX4=;
	b=EA6BljAqZc1barv1BCS9HXZcaH+ZI3vv7ku4o303GZb+vY9WXLnxZsjsvTVnoI+m8GbtsR
	ODaMLDHlGkQI8+Bg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 5AC67136C7;
	Tue, 12 Aug 2025 13:18:45 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id nf37FDU/m2jgOgAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Tue, 12 Aug 2025 13:18:45 +0000
Message-ID: <3fad47e3-c1e7-4f37-8341-402d2756ea20@suse.de>
Date: Tue, 12 Aug 2025 15:18:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Rob Herring <robh@kernel.org>
References: <20250811-ethos-v2-0-a219fc52a95b@kernel.org>
 <20250811-ethos-v2-2-a219fc52a95b@kernel.org>
 <8a872e48-0743-43b0-8259-70d6b8e4c221@suse.de>
 <CAL_JsqJL5sy7Otzo7R8mYW_-7s+ajggjtuW7tYBnVxYPaJHs+w@mail.gmail.com>
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
In-Reply-To: <CAL_JsqJL5sy7Otzo7R8mYW_-7s+ajggjtuW7tYBnVxYPaJHs+w@mail.gmail.com>
X-Spam-Level: 
X-Spam-Flag: NO
X-Spam-Score: -2.80
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.223.131/32];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:29298, ipnet:195.135.223.0/24, country:DE];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[tomeuvizoso.net,kernel.org,linux.intel.com,gmail.com,ffwll.ch,linaro.org,amd.com,arm.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[195.135.223.131:from,2a07:de40:b281:106:10:150:64:167:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D87C03F6EF
X-Spamd-Bar: --
Message-ID-Hash: AR2NMKBGLYLTPRTIIHWVQ4IYDEVACFYB
X-Message-ID-Hash: AR2NMKBGLYLTPRTIIHWVQ4IYDEVACFYB
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Steven Price <steven.price@arm.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/2] accel: Add Arm Ethos-U NPU driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AR2NMKBGLYLTPRTIIHWVQ4IYDEVACFYB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkNCg0KQW0gMTIuMDguMjUgdW0gMTQ6NTYgc2NocmllYiBSb2IgSGVycmluZzoNCj4gT24gVHVl
LCBBdWcgMTIsIDIwMjUgYXQgNjowMeKAr0FNIFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFu
bkBzdXNlLmRlPiB3cm90ZToNCj4+IEhpDQo+Pg0KPj4gQW0gMTEuMDguMjUgdW0gMjM6MDUgc2No
cmllYiBSb2IgSGVycmluZyAoQXJtKToNCj4+PiBBZGQgYSBkcml2ZXIgZm9yIEFybSBFdGhvcy1V
NjUvVTg1IE5QVXMuIFRoZSBFdGhvcy1VIE5QVSBoYXMgYQ0KPj4+IHJlbGF0aXZlbHkgc2ltcGxl
IGludGVyZmFjZSB3aXRoIHNpbmdsZSBjb21tYW5kIHN0cmVhbSB0byBkZXNjcmliZQ0KPj4+IGJ1
ZmZlcnMsIG9wZXJhdGlvbiBzZXR0aW5ncywgYW5kIG5ldHdvcmsgb3BlcmF0aW9ucy4gSXQgc3Vw
cG9ydHMgdXAgdG8gOA0KPj4+IG1lbW9yeSByZWdpb25zICh0aG91Z2ggbm8gaC93IGJvdW5kcyBv
biBhIHJlZ2lvbikuIFRoZSBFdGhvcyBOUFVzDQo+Pj4gYXJlIGRlc2lnbmVkIHRvIHVzZSBhbiBT
UkFNIGZvciBzY3JhdGNoIG1lbW9yeS4gUmVnaW9uIDIgaXMgcmVzZXJ2ZWQNCj4+PiBmb3IgU1JB
TSAobGlrZSB0aGUgZG93bnN0cmVhbSBkcml2ZXIgc3RhY2sgYW5kIGNvbXBpbGVyKS4gVXNlcnNw
YWNlDQo+Pj4gZG9lc24ndCBuZWVkIGFjY2VzcyB0byB0aGUgU1JBTS4NCj4+Pg0KPj4+IFRoZSBo
L3cgaGFzIG5vIE1NVSBub3IgZXh0ZXJuYWwgSU9NTVUgYW5kIGlzIGEgRE1BIGVuZ2luZSB3aGlj
aCBjYW4NCj4+PiByZWFkIGFuZCB3cml0ZSBhbnl3aGVyZSBpbiBtZW1vcnkgd2l0aG91dCBoL3cg
Ym91bmRzIGNoZWNrcy4gVGhlIHVzZXINCj4+PiBzdWJtaXR0ZWQgY29tbWFuZCBzdHJlYW1zIG11
c3QgYmUgdmFsaWRhdGVkIGFnYWluc3QgdGhlIGJvdW5kcyBvZiB0aGUNCj4+PiBHRU0gQk9zLiBU
aGlzIGlzIHNpbWlsYXIgdG8gdGhlIFZDNCBkZXNpZ24gd2hpY2ggdmFsaWRhdGVzIHNoYWRlcnMu
DQo+Pj4NCj4+PiBUaGUgam9iIHN1Ym1pdCBpcyBiYXNlZCBvbiB0aGUgcm9ja2V0IGRyaXZlciBm
b3IgdGhlIFJvY2tjaGlwIE5QVQ0KPj4+IHV0aWxpemluZyB0aGUgR1BVIHNjaGVkdWxlci4gSXQg
aXMgc2ltcGxlciBhcyB0aGVyZSdzIG9ubHkgMSBjb3JlIHJhdGhlcg0KPj4+IHRoYW4gMy4NCj4+
Pg0KPj4+IFRlc3RlZCBvbiBpLk1YOTMgcGxhdGZvcm0gKFU2NSkgd2l0aCBXSVAgTWVzYSBUZWZs
b24gc3VwcG9ydC4NCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IFJvYiBIZXJyaW5nIChBcm0pIDxy
b2JoQGtlcm5lbC5vcmc+DQo+PiBJJ3ZlIGxvb2tlZCBvdmVyIHRoaXMgcGF0Y2ggYW5kIGl0IGxv
b2tzIGdvb2QgdG8gbWUuIFRoZXJlJ3MgYQ0KPj4gZGV2X2luZm8oKSBpbiBldGhvc19pbml0KCkg
b2Ygd2hpY2ggSSB0aGluayBpdCBzaG91bGQgYmVjb21lIGRybV9kYmcoKS4NCj4+IEFueXdheQ0K
PiBJIHByZWZlciB0byBwcmludCBvdXQgd2hhdCBoL3cgd2UndmUgZGlzY292ZXJlZC4gVGhhdCdz
IGEgZmFpcmx5DQo+IGNvbW1vbiBwYXR0ZXJuIGZvciBkcml2ZXJzIChhbmQgbW9yZSB1c2VmdWwg
dGhhbiBhbm5vdW5jaW5nIGRyaXZlcnMNCj4gdGhhdCBvbmx5IGxvYWRlZCkuDQo+DQo+PiBBY2tl
ZC1ieTogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQo+IFRoYW5rcyEN
Cj4NCj4+IFNpZGUgbm90ZTogSSBub3RpY2VkIHRoYXQgdGhlcmUncyBidWZmZXItYWxsb2NhdGlv
biBjb2RlIGhlcmUgdGhhdA0KPj4gcmVpbnZlbnRzIGR1bWIgYnVmZmVycy4gV2UndmUgb2NhdGlv
bmFsbHkgdGFsa2VkIGFib3V0IGNyZWF0aW5nIGEgYmV0dGVyDQo+PiBkdW1iLWJ1ZmZlcnMgaW9j
dGwgaW50ZXJmYWNlIGFuZCB0aGlzIGRyaXZlcnMgY291bGQgYmUgYW5vdGhlciB1c2UgY2FzZS4N
Cj4gWWVhaC4gSW4gdGhlIHBhc3QgSSBnb3QgdG9sZCBkb24ndCB1c2UgZHVtYiBidWZmZXJzIEFQ
SXMgZm9yIGFueXRoaW5nDQo+IGJ1dCBkdW1iIHNjYW5vdXQgYnVmZmVycy4gSSBndWVzcyB3aXRo
IGVub3VnaCBjb3BpZXMgb3BpbmlvbnMNCj4gY2hhbmdlLi4uDQoNClRoYXQgYWR2aWNlIHdhc24n
dCB3cm9uZy4gQnV0IHRoZSBjdXJyZW50IGR1bWItYnVmZmVyIGlvY3RscyBkb24ndCANCnN1cHBv
cnQgc2Nhbm91dCBidWZmZXJzIHdlbGwgZWl0aGVyLiBJZiB3ZSBidWlsZCBzb21ldGhpbmcgbmV3
LCB3ZSBjYW4gDQp0cnkgdG8gY292ZXIgYWRkaXRpb25hbCB1c2UgY2FzZXMgYXMgd2VsbC4NCg0K
QmVzdCByZWdhcmRzDQpUaG9tYXMNCg0KPg0KPiBSb2INCg0KLS0gDQotLQ0KVGhvbWFzIFppbW1l
cm1hbm4NCkdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXINClNVU0UgU29mdHdhcmUgU29sdXRpb25z
IEdlcm1hbnkgR21iSA0KRnJhbmtlbnN0cmFzc2UgMTQ2LCA5MDQ2MSBOdWVybmJlcmcsIEdlcm1h
bnkNCkdGOiBJdm8gVG90ZXYsIEFuZHJldyBNeWVycywgQW5kcmV3IE1jRG9uYWxkLCBCb3VkaWVu
IE1vZXJtYW4NCkhSQiAzNjgwOSAoQUcgTnVlcm5iZXJnKQ0KDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
