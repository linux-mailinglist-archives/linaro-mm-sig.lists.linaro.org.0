Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6F770F2EE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 11:35:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6C53D41407
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 09:35:29 +0000 (UTC)
Received: from mailbox.box.xen0n.name (mail.xen0n.name [115.28.160.31])
	by lists.linaro.org (Postfix) with ESMTPS id 1B7853EF21
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 May 2023 08:09:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=xen0n.name header.s=mail header.b=GxNeYl2P;
	spf=pass (lists.linaro.org: domain of kernel@xen0n.name designates 115.28.160.31 as permitted sender) smtp.mailfrom=kernel@xen0n.name;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xen0n.name; s=mail;
	t=1684742981; bh=aA1E0+xC/rAqJLb6Jh39PUGRSeGXjVPeIfHkIASardM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=GxNeYl2P1gnfXOcmwOovlg6H5jfccMv55Mlm6Y1G/Rj7o8toa/nDZIs4swTV43Y/g
	 cYAQYTAiQC8X1nkbWT/3/uxkWcBz6G3UGpjOeCmxYqh4KFeY8+HF2/fWbWnREobchl
	 iWk2z7ftTFn2LgWhH9gRfUSEFmawzGMG7bpz2kuc=
Received: from [100.100.57.122] (unknown [58.34.185.106])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mailbox.box.xen0n.name (Postfix) with ESMTPSA id 7DFEA600DA;
	Mon, 22 May 2023 16:09:40 +0800 (CST)
Message-ID: <97fe7af2-0a93-3f28-db6e-40a9b0798d49@xen0n.name>
Date: Mon, 22 May 2023 16:09:39 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.11.0
Content-Language: en-US
To: Sui Jingfeng <15330273260@189.cn>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sui Jingfeng <suijingfeng@loongson.cn>, Li Yi <liyi@loongson.cn>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Koenig <christian.koenig@amd.com>,
 Emil Velikov <emil.l.velikov@gmail.com>
References: <20230520105718.325819-1-15330273260@189.cn>
 <20230520105718.325819-2-15330273260@189.cn>
 <26fd78b9-c074-8341-c99c-4e3b38cd861a@xen0n.name>
 <73447e35-f4df-9871-6210-b7bf1a3f04fc@189.cn>
From: WANG Xuerui <kernel@xen0n.name>
In-Reply-To: <73447e35-f4df-9871-6210-b7bf1a3f04fc@189.cn>
X-Spamd-Result: default: False [-9.50 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[xen0n.name:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:115.28.160.31];
	R_DKIM_ALLOW(-0.20)[xen0n.name:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	FREEMAIL_TO(0.00)[189.cn,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,loongson.cn,linaro.org,amd.com];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:37963, ipnet:115.28.128.0/18, country:CN];
	RCPT_COUNT_TWELVE(0.00)[20];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[renesas];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[xen0n.name:+];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[xen0n.name];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1B7853EF21
X-Spamd-Bar: ---------
X-MailFrom: kernel@xen0n.name
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: K4VHBXG5FZMOMZUESC7GWMZ2CMPUJIRO
X-Message-ID-Hash: K4VHBXG5FZMOMZUESC7GWMZ2CMPUJIRO
X-Mailman-Approved-At: Wed, 24 May 2023 09:34:56 +0000
CC: linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, Nathan Chancellor <nathan@kernel.org>, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/K4VHBXG5FZMOMZUESC7GWMZ2CMPUJIRO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMy81LzIyIDE2OjAyLCBTdWkgSmluZ2Zlbmcgd3JvdGU6DQo+IEhpLA0KPiANCj4gT24g
MjAyMy81LzIxIDIwOjIxLCBXQU5HIFh1ZXJ1aSB3cm90ZToNCj4+PiAtLS0gL2Rldi9udWxsDQo+
Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2xvb25nc29uL0tjb25maWcNCj4+PiBAQCAtMCwwICsx
LDE3IEBADQo+Pj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjANCj4+PiArDQo+
Pj4gK2NvbmZpZyBEUk1fTE9PTkdTT04NCj4+PiArwqDCoMKgIHRyaXN0YXRlICJEUk0gc3VwcG9y
dCBmb3IgTG9vbmdzb24gR3JhcGhpY3MiDQo+Pj4gK8KgwqDCoCBkZXBlbmRzIG9uIERSTSAmJiBQ
Q0kgJiYgTU1VDQo+Pj4gK8KgwqDCoCBzZWxlY3QgRFJNX0tNU19IRUxQRVINCj4+PiArwqDCoMKg
IHNlbGVjdCBEUk1fVFRNDQo+Pj4gK8KgwqDCoCBzZWxlY3QgSTJDDQo+Pj4gK8KgwqDCoCBzZWxl
Y3QgSTJDX0FMR09CSVQNCj4+PiArwqDCoMKgIGhlbHANCj4+PiArwqDCoMKgwqDCoCBUaGlzIGlz
IGEgRFJNIGRyaXZlciBmb3IgTG9vbmdzb24gR3JhcGhpY3MsIGl0IG1heSBpbmNsdWRpbmcNCj4+
DQo+PiBEcm9wICJpdCBtYXkiOyAiaW5jbHVkaW5nIiBzaG91bGQgYmUgZW5vdWdoLg0KPj4NCj4g
J2l0IG1heScgaXMgbW9yZSAqcHJlY2lzZSogaGVyZSwgYmVjYXVzZSBjdXJyZW50bHkgd2UgZG9u
J3Qgc2hpcCB3aXRoIA0KPiB0aGUgc3VwcG9ydCBmb3IgbG9vbmdzb24gMksgc2VyaWVzIFNvQy4N
Cj4gDQo+IEknbSB0cnkgdG8gYmUgcHJlY2lzZSBhcyBmYXIgYXMgSSBjYW4sIHdlIGF2b2lkIG1h
ZGUgdGhpcyBkcml2ZXIgdG9vIA0KPiBsYXJnZSBieSBpZ25vcmUgbG9vbmdzb24gMksgc2VyaWVz
IFNvQyB0ZW1wb3JhcnkuDQoNClRoYXQncyBhIGdvb2QgaWRlYSEgRm9yIG5vdyB0aGUgcGF0Y2gg
aXMgc28gbGFyZ2UgdGhhdCBteSByZXZpZXcgcmVwbHkgDQppcyBzYWlkIHRvIGJlIGRyb3BwZWQg
YnkgdGhlIGxpc3RzLiBGb2N1c2luZyBvbiBvbmUgYnVuY2ggb2Ygc2ltaWxhciANCm1vZGVscyBm
aXJzdCB0aGVuIGFkZGluZyBzdXBwb3J0IGZvciB0aGUgcmVzdCBub3Qtc28tc2ltaWxhciBtb2Rl
bHMgaXMgDQp2ZXJ5IGZyaWVuZGx5IHRvd2FyZHMgdGhlIHJldmlld2luZyBwcm9jZXNzIGFuZCB3
aWxsIGhlbHAgY29kZSBxdWFsaXR5IHRvby4NCg0KPiANCj4+PiArwqDCoMKgwqDCoCBMUzdBMjAw
MCwgTFM3QTEwMDAsIExTMksyMDAwIGFuZCBMUzJLMTAwMCBldGMuIExvb25nc29uIExTN0ENCj4+
PiArwqDCoMKgwqDCoCBzZXJpZXMgYXJlIGJyaWRnZSBjaGlwc2V0LCB3aGlsZSBMb29uZ3NvbiBM
UzJLIHNlcmllcyBhcmUgU29DLg0KPj4+ICsNCj4+PiArwqDCoMKgwqDCoCBJZiAiTSIgaXMgc2Vs
ZWN0ZWQsIHRoZSBtb2R1bGUgd2lsbCBiZSBjYWxsZWQgbG9vbmdzb24uDQo+Pg0KPj4gSnVzdCAi
bG9vbmdzb24iPyANCj4gDQo+IFllcyzCoCB3aGVuIGNvbXBpbGUgdGhpcyBkcml2ZXIgYXMgbW9k
dWxlLMKgIGxvb25nc29uLmtvIHdpbGwgYmUgZ2VuZXJhdGVkLg0KPiANCj4gIMKgZHJtIHJhZGVv
biBpcyBhbHNvIGRvaW5nIHNvLCBTZWUgZHJtL3JhZGVvbi9LY29uZmlnLg0KPiANCj4+IEkga25v
dyBpdCdzIGxpa2UgdGhpcyBmb3IgYWdlcyAoYXQgbGVhc3QgZGF0aW5nIGJhY2sgdG8gdGhlIE1J
UFMgZGF5cykgDQo+PiBidXQgeW91IHJlYWxseSBkb24ndCB3YW50IHRvIGltcGx5IExvb25nc29u
IGlzIG1haW5seSBhIEdQVSBjb21wYW55LiANCj4+IFNvbWV0aGluZyBsaWtlICJsb29uZ3Nvbl9k
cm0iIG9yICJsc2RjIiBvciAiZ3NncHUiIGNvdWxkIGJlIGJldHRlci4gDQo+IA0KPiBObywgdGhl
c2UgbmFtZSBtYXkgaGF2ZSBiYWNrd2FyZCBjb21wYXRpYmlsaXR5IHByb2JsZW1zLg0KPiANCj4g
RG93bnN0cmVhbSBkcml2ZXIgYWxyZWFkeSB0YWtlbiB0aG9zZSBuYW1lLg0KPiANCj4gdXNlcnNw
YWNlIGRyaXZlciBuZWVkIHRvIGRpZmZlcmVudGlhdGUgdGhlbSB3aG8gaXMgd2hvLg0KDQpJTU8g
dGhpcyBzaG91bGRuJ3QgYmUgYSBwcm9ibGVtLiBMZXQgbWUgdHJ5IGV4cGxhaW5pbmcgdGhpczog
Y3VycmVudGx5LCANCnVwc3RyZWFtIC8gdGhlICJuZXcgd29ybGQiIGRvZXNuJ3QgaGF2ZSBhbnkg
c3VwcG9ydCBmb3IgdGhpcyBkcml2ZXIgYXQgDQphbGwsIHNvIGFueSBuYW1lIHdpbGwgd29yazsg
anVzdCB1c2Ugd2hhdGV2ZXIgaXMgYXBwcm9wcmlhdGUgZnJvbSBhbiANCnVwc3RyZWFtJ3MgcGVy
c3BlY3RpdmUsIHRoZW4gbWFrZSB0aGUgdXNlcnNwYWNlIGJpdHMgcmVjb2duaXplIGJvdGggDQp2
YXJpYW50cywgYW5kIHlvdSdsbCBiZSBmaW5lLiBBbmQgdGhlICJleGlzdGluZyIgdXNlcnNwYWNl
IGRyaXZlcnMgY2FuIA0KYWxzbyBjYXJyeSB0aGUgY2hhbmdlLCBpdCdsbCBqdXN0IGJlIGEgYnJh
bmNoIG5ldmVyIHRha2VuIGluIHRoYXQgc2V0dXAuDQoNClNvLCBJJ20gc3RpbGwgaW4gZmF2b3Ig
b2Yga2VlcGluZyB0aGUgdXBzdHJlYW0gImNsZWFuIiB3aXRob3V0IGR1YmlvdXMgDQpuYW1lcyBs
aWtlIHRoaXMgKGJhcmUgImxvb25nc29uIikuIFdoYXQgZG8geW91IHRoaW5rIGFib3V0IG15IHN1
Z2dlc3Rpb24gDQphYm92ZT8NCg0KLS0gDQpXQU5HICJ4ZW4wbiIgWHVlcnVpDQoNCkxpbnV4L0xv
b25nQXJjaCBtYWlsaW5nIGxpc3Q6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xvb25nYXJjaC8N
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
