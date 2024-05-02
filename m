Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E54978B99D8
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 May 2024 13:14:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7FB54441A8
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 May 2024 11:14:33 +0000 (UTC)
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	by lists.linaro.org (Postfix) with ESMTPS id DEB793F1C9
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 May 2024 11:14:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=UYqRyDsw;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=Qu143nYj;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=UYqRyDsw;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=Qu143nYj;
	spf=pass (lists.linaro.org: domain of tzimmermann@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=tzimmermann@suse.de;
	dmarc=pass (policy=none) header.from=suse.de
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id BB7721FBA0;
	Thu,  2 May 2024 11:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1714648460; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=AFoivokVevbslefJbFKkp1k4T1s78Pk+5RSvCxa63ZE=;
	b=UYqRyDswRJKSRNZPwV/gp0aTlhMsCEit/RtyFG1lDGsMcIXvCou9oNvgKrAXr0NVxsVGJx
	TXEIhlUkYRkJ+DCIDLaZVE83aHCdXUd3OhWzykfyxzsAYjIX9FDitxJWUnw6j3vuEWUYo6
	YB0+7z3KCymBMFq06U9ze3sM8tJ0ASU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1714648460;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=AFoivokVevbslefJbFKkp1k4T1s78Pk+5RSvCxa63ZE=;
	b=Qu143nYjL+mHzWZ8nw6tnFahqj3o5XyootwuX+0cy+xiI1BPL68vP8ywBz7foDEgW7awn6
	gWkszUz9rIpuCKBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1714648460; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=AFoivokVevbslefJbFKkp1k4T1s78Pk+5RSvCxa63ZE=;
	b=UYqRyDswRJKSRNZPwV/gp0aTlhMsCEit/RtyFG1lDGsMcIXvCou9oNvgKrAXr0NVxsVGJx
	TXEIhlUkYRkJ+DCIDLaZVE83aHCdXUd3OhWzykfyxzsAYjIX9FDitxJWUnw6j3vuEWUYo6
	YB0+7z3KCymBMFq06U9ze3sM8tJ0ASU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1714648460;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=AFoivokVevbslefJbFKkp1k4T1s78Pk+5RSvCxa63ZE=;
	b=Qu143nYjL+mHzWZ8nw6tnFahqj3o5XyootwuX+0cy+xiI1BPL68vP8ywBz7foDEgW7awn6
	gWkszUz9rIpuCKBQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 4DDA41386E;
	Thu,  2 May 2024 11:14:20 +0000 (UTC)
Received: from dovecot-director2.suse.de ([10.150.64.162])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id kdDnEYx1M2YXIAAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Thu, 02 May 2024 11:14:20 +0000
Message-ID: <31d22165-f7d7-4aaa-802c-fd8c9d67b287@suse.de>
Date: Thu, 2 May 2024 13:14:19 +0200
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
 <20240501065650.2809530-2-adrian.larumbe@collabora.com>
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
In-Reply-To: <20240501065650.2809530-2-adrian.larumbe@collabora.com>
X-Spam-Level: 
X-Spam-Score: -4.29
X-Spam-Flag: NO
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DEB793F1C9
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.99 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.223.131/32];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:29298, ipnet:195.135.223.0/24, country:DE];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_TO(0.00)[collabora.com,gmail.com,linux.intel.com,kernel.org,ffwll.ch,arm.com,linaro.org,amd.com,broadcom.com];
	RCVD_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[195.135.223.131:from];
	DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Action: no action
Message-ID-Hash: 2CKUWIWII7J4J357JSJ5A6OLQLMFRENF
X-Message-ID-Hash: 2CKUWIWII7J4J357JSJ5A6OLQLMFRENF
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kernel@collabora.com, dri-devel@lists.freedesktop.org, lima@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/2] drm/panfrost: Fix dma_resv deadlock at drm object pin time
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2CKUWIWII7J4J357JSJ5A6OLQLMFRENF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkNCg0KQW0gMDEuMDUuMjQgdW0gMDg6NTUgc2NocmllYiBBZHJpw6FuIExhcnVtYmU6DQo+IFdo
ZW4gUGFuZnJvc3QgbXVzdCBwaW4gYW4gb2JqZWN0IHRoYXQgaXMgYmVpbmcgcHJlcGFyZWQgYSBk
bWEtYnVmDQo+IGF0dGFjaG1lbnQgZm9yIG9uIGJlaGFsZiBvZiBhbm90aGVyIGRyaXZlciwgdGhl
IGNvcmUgZHJtIGdlbSBvYmplY3QgcGlubmluZw0KPiBjb2RlIGFscmVhZHkgdGFrZXMgYSBsb2Nr
IG9uIHRoZSBvYmplY3QncyBkbWEgcmVzZXJ2YXRpb24uDQo+DQo+IEhvd2V2ZXIsIFBhbmZyb3N0
IEdFTSBvYmplY3QncyBwaW5uaW5nIGNhbGxiYWNrIHdvdWxkIGV2ZW50dWFsbHkgdHJ5IHRha2lu
Zw0KPiB0aGUgbG9jayBvbiB0aGUgc2FtZSBkbWEgcmVzZXJ2YXRpb24gd2hlbiBkZWxlZ2F0aW5n
IHBpbm5pbmcgb2YgdGhlIG9iamVjdA0KPiBvbnRvIHRoZSBzaG1lbSBzdWJzeXN0ZW0sIHdoaWNo
IGxlZCB0byBhIGRlYWRsb2NrLg0KPg0KPiBUaGlzIGNhbiBiZSBzaG93biBieSBlbmFibGluZyBD
T05GSUdfREVCVUdfV1dfTVVURVhfU0xPV1BBVEgsIHdoaWNoIHRocm93cw0KPiB0aGUgZm9sbG93
aW5nIHJlY3Vyc2l2ZSBsb2NraW5nIHNpdHVhdGlvbjoNCj4NCj4gd2VzdG9uLzM0NDAgaXMgdHJ5
aW5nIHRvIGFjcXVpcmUgbG9jazoNCj4gZmZmZjAwMDAwMGUyMzVhMCAocmVzZXJ2YXRpb25fd3df
Y2xhc3NfbXV0ZXgpeysuKy59LXszOjN9LCBhdDogZHJtX2dlbV9zaG1lbV9waW4rMHgzNC8weGI4
IFtkcm1fc2htZW1faGVscGVyXQ0KPiBidXQgdGFzayBpcyBhbHJlYWR5IGhvbGRpbmcgbG9jazoN
Cj4gZmZmZjAwMDAwMGUyMzVhMCAocmVzZXJ2YXRpb25fd3dfY2xhc3NfbXV0ZXgpeysuKy59LXsz
OjN9LCBhdDogZHJtX2dlbV9waW4rMHgyYy8weDgwIFtkcm1dDQo+DQo+IEZpeCBpdCBieSBhc3N1
bWluZyB0aGUgb2JqZWN0J3MgcmVzZXJ2YXRpb24gaGFkIGFscmVhZHkgYmVlbiBsb2NrZWQgYnkg
dGhlDQo+IHRpbWUgd2UgcmVhY2ggcGFuZnJvc3RfZ2VtX3Bpbi4NCg0KTWF5YmUgc2F5IHRoYXQg
dGhlIHJlc2VydmF0aW9uIGxvY2sgaGFzIGJlZW4gdGFrZW4gaW4gZHJtX2dlbV9waW4oKQ0KDQo+
DQo+IERvIHRoZSBzYW1lIHRoaW5nIGZvciB0aGUgTGltYSBkcml2ZXIsIGFzIGl0IG1vc3QgbGlr
ZWx5IHN1ZmZlcnMgZnJvbSB0aGUNCj4gc2FtZSBpc3N1ZS4NCg0KUGxlYXNlIHNwbGl0IHRoaXMg
cGF0Y2ggaW50byBvbmUgZm9yIHBhbmZyb3N0IGFuZCBvbmUgZm9yIGxpbWEuIFRvIGVhY2ggDQpw
YXRjaCwgeW91IGNhbiBhZGQNCg0KUmV2aWV3ZWQtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emlt
bWVybWFubkBzdXNlLmRlPg0KDQpCZXN0IHJlZ2FyZHMNClRob21hcw0KDQo+DQo+IENjOiBUaG9t
YXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4NCj4gQ2M6IERtaXRyeSBPc2lwZW5r
byA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+DQo+IENjOiBCb3JpcyBCcmV6aWxsb24g
PGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPg0KPiBDYzogU3RldmVuIFByaWNlIDxzdGV2
ZW4ucHJpY2VAYXJtLmNvbT4NCj4gRml4ZXM6IGE3ODAyNzg0NzIyNiAoImRybS9nZW06IEFjcXVp
cmUgcmVzZXJ2YXRpb24gbG9jayBpbiBkcm1fZ2VtX3twaW4vdW5waW59KCkiKQ0KPiBTaWduZWQt
b2ZmLWJ5OiBBZHJpw6FuIExhcnVtYmUgPGFkcmlhbi5sYXJ1bWJlQGNvbGxhYm9yYS5jb20+DQo+
IC0tLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfZ2VtLmMgICAgICAgICB8IDIgKy0N
Cj4gICBkcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZ2VtLmMgfCAyICstDQo+ICAg
MiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+DQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbGltYS9saW1hX2dlbS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2xpbWEvbGltYV9nZW0uYw0KPiBpbmRleCA3ZWEyNDRkODc2Y2EuLmM0ZTBmOWZhYWE0NyAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9nZW0uYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vbGltYS9saW1hX2dlbS5jDQo+IEBAIC0xODUsNyArMTg1LDcgQEAgc3Rh
dGljIGludCBsaW1hX2dlbV9waW4oc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopDQo+ICAgCWlm
IChiby0+aGVhcF9zaXplKQ0KPiAgIAkJcmV0dXJuIC1FSU5WQUw7DQo+ICAgDQo+IC0JcmV0dXJu
IGRybV9nZW1fc2htZW1fcGluKCZiby0+YmFzZSk7DQo+ICsJcmV0dXJuIGRybV9nZW1fc2htZW1f
b2JqZWN0X3BpbihvYmopOw0KPiAgIH0NCj4gICANCj4gICBzdGF0aWMgaW50IGxpbWFfZ2VtX3Zt
YXAoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9nZW0uYyBiL2Ry
aXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9nZW0uYw0KPiBpbmRleCBkNDdiNDBiODJi
MGIuLmYyNjhiZDVjMjg4NCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0
L3BhbmZyb3N0X2dlbS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9z
dF9nZW0uYw0KPiBAQCAtMTkyLDcgKzE5Miw3IEBAIHN0YXRpYyBpbnQgcGFuZnJvc3RfZ2VtX3Bp
bihzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikNCj4gICAJaWYgKGJvLT5pc19oZWFwKQ0KPiAg
IAkJcmV0dXJuIC1FSU5WQUw7DQo+ICAgDQo+IC0JcmV0dXJuIGRybV9nZW1fc2htZW1fcGluKCZi
by0+YmFzZSk7DQo+ICsJcmV0dXJuIGRybV9nZW1fc2htZW1fb2JqZWN0X3BpbihvYmopOw0KPiAg
IH0NCj4gICANCj4gICBzdGF0aWMgZW51bSBkcm1fZ2VtX29iamVjdF9zdGF0dXMgcGFuZnJvc3Rf
Z2VtX3N0YXR1cyhzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikNCg0KLS0gDQotLQ0KVGhvbWFz
IFppbW1lcm1hbm4NCkdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXINClNVU0UgU29mdHdhcmUgU29s
dXRpb25zIEdlcm1hbnkgR21iSA0KRnJhbmtlbnN0cmFzc2UgMTQ2LCA5MDQ2MSBOdWVybmJlcmcs
IEdlcm1hbnkNCkdGOiBJdm8gVG90ZXYsIEFuZHJldyBNeWVycywgQW5kcmV3IE1jRG9uYWxkLCBC
b3VkaWVuIE1vZXJtYW4NCkhSQiAzNjgwOSAoQUcgTnVlcm5iZXJnKQ0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
