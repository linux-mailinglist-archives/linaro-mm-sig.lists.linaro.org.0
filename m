Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C523987E42
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Sep 2024 08:17:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 174894463C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Sep 2024 06:17:10 +0000 (UTC)
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	by lists.linaro.org (Postfix) with ESMTPS id 87C5E40F70
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Sep 2024 06:16:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=U6Au4uJV;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.167.171 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3e045525719so1128680b6e.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Sep 2024 23:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727417814; x=1728022614; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ozF4LqzPuN76+eJ5lZ+Te5WdJCv5iNC/lHSX5fH2wo8=;
        b=U6Au4uJVSHFzj1pf0op065yQ9pwog2DOiusKzYRGpWcYL0ESsetfBNnPkTsc+Ukw3E
         qO0WAPgrKlWnmNvCLCKanxKjVJ1MkL4vATiUpNHRjFdL+6232jHSJASc/pcltaW8Wbtq
         1tiRFlw8uoVRTzSQa+ER0RRVCBsGyPWe+gRQA9hOE3Z3pbNATrtMP/+OjMb4UqgAnfM9
         rF2vs7d6ylFM5kVLzFROCOcxN1umku2042xStIylLjDKI1e/aocraHrFTNlGDmgtG3la
         5f0krMhsu7FW253K23J0hynI3/AnjYC1xGPgX2v6NXusJITkHNi6nQMTg4gyrmrXkQPe
         Z38A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727417814; x=1728022614;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ozF4LqzPuN76+eJ5lZ+Te5WdJCv5iNC/lHSX5fH2wo8=;
        b=mnj+fpy6mO25rewyJ9eh7VTeu0O0ZS4W3zhNvyKQMSBPID+heV+UwD5keEQGavDImt
         jiLti3mCwu2BneXyf9Aq36coNnmRZ+nI2ph+b0mzk0fQugfQvi0chEuXbAX5JRHCFiQO
         PB+zoRXeYgtd7RShmBclYvKSPsgpKuzrWpq/M+jigj0uIC6m/eDv3UTaeZ8RFX4/ifbX
         5dkz2CIGoV192PDZLYXk3sOe/mMDAWVpRz79awlydYzn4t1wvWtIK6qBfoJbqt/WdYct
         a7oHniWI3x7iIhC8oFKzP8D5ttNi0tBhcAzuEYKLW0DyAMI4dApz7icv9lQf1/ZpwcVb
         VtRA==
X-Forwarded-Encrypted: i=1; AJvYcCVsRPaTBYghkToa1ZgoAX3QYhjRq/8XbjOwR+aA+LUxxgRBO7Om1wG/GM5HZkAS8ln3d9GeRGW/HIunKxwl@lists.linaro.org
X-Gm-Message-State: AOJu0YwzLGx2jG0dgHYYE2SvVi6RlYtK5Dd0mqEN4JPaNZkQKw7QVAvh
	M0xrZzSeocG3bBjyVp4Q9giKpzQhk5ZiHi+G3VdjUVuqzRPNI51JLdoAHa30Vm+M6degAV7I+BV
	Qo0+LSIfg1fqhAQAK8kUcD3CxqxdsvwBB9LNsvvYd
X-Google-Smtp-Source: AGHT+IE7a9V7g499bPCEexIc6gQX3B//P8N+eSHKwz0TbP7BEFlO4EoSql2AgMnBjmJ12sfgT8sHqNMG3B3iulzPgZA=
X-Received: by 2002:a05:6808:331a:b0:3e3:91a5:d8bf with SMTP id
 5614622812f47-3e39395c60emr1379976b6e.8.1727417813829; Thu, 26 Sep 2024
 23:16:53 -0700 (PDT)
MIME-Version: 1.0
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
 <dhxvyshwi4qmcmwceokhqey2ww4azjcs6qrpnkgivdj7tv5cke@r36srvvbof6q>
 <d8e0cb78-7cfb-42bf-b3a5-f765592e8dd4@ti.com> <mzur3odofwwrdqnystozjgf3qtvb73wqjm6g2vf5dfsqiehaxk@u67fcarhm6ge>
 <e967e382-6cca-4dee-8333-39892d532f71@gmail.com> <lk7a2xuqrctyywuanjwseh5lkcz3soatc2zf3kn3uwc43pdyic@edm3hcd2koas>
 <04caa788-19a6-4336-985c-4eb191c24438@amd.com> <2f9a4abe-b2fc-4bc7-9926-1da2d38f5080@linaro.org>
 <CAFA6WYMd46quafJoGXjkCiPOKpYoDZdXwrNbG3QekyjB3_2FTA@mail.gmail.com> <2ab11399-ffa0-4940-a965-fb95a5f3b20e@amd.com>
In-Reply-To: <2ab11399-ffa0-4940-a965-fb95a5f3b20e@amd.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Fri, 27 Sep 2024 08:16:42 +0200
Message-ID: <CAHUa44GfsSjE9w4vPcbcESNoDj3exA+tfSxzbJh844CzyBVFtg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 87C5E40F70
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.171:from];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	TAGGED_RCPT(0.00)[dt];
	URIBL_BLOCKED(0.00)[linaro.org:email,linaro.org:dkim,mail-oi1-f171.google.com:helo,mail-oi1-f171.google.com:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ti.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,mediatek.com,collabora.com,arm.com,google.com,kernel.org];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: LKUFYN6UHETJGC52CJ5DVF7KYSCS7JIB
X-Message-ID-Hash: LKUFYN6UHETJGC52CJ5DVF7KYSCS7JIB
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Garg <sumit.garg@linaro.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Andrew Davis <afd@ti.com>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 0/4] Linaro restricted heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LKUFYN6UHETJGC52CJ5DVF7KYSCS7JIB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIFRodSwgU2VwIDI2LCAyMDI0IGF0IDQ6MDPigK9QTSBDaHJpc3RpYW4gS8O2bmln
DQo8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gQW0gMjYuMDkuMjQgdW0g
MTU6NTIgc2NocmllYiBTdW1pdCBHYXJnOg0KPiA+IFtSZXNlbmQgaW4gcGxhaW4gdGV4dCBmb3Jt
YXQgYXMgbXkgZWFybGllciBtZXNzYWdlIHdhcyByZWplY3RlZCBieQ0KPiA+IHNvbWUgbWFpbGlu
ZyBsaXN0c10NCj4gPg0KPiA+IE9uIFRodSwgMjYgU2VwdCAyMDI0IGF0IDE5OjE3LCBTdW1pdCBH
YXJnIDxzdW1pdC5nYXJnQGxpbmFyby5vcmc+IHdyb3RlOg0KPiA+PiBPbiA5LzI1LzI0IDE5OjMx
LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiA+Pg0KPiA+PiBBbSAyNS4wOS4yNCB1bSAxNDo1
MSBzY2hyaWViIERtaXRyeSBCYXJ5c2hrb3Y6DQo+ID4+DQo+ID4+IE9uIFdlZCwgU2VwIDI1LCAy
MDI0IGF0IDEwOjUxOjE1QU0gR01ULCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiA+Pg0KPiA+
PiBBbSAyNS4wOS4yNCB1bSAwMTowNSBzY2hyaWViIERtaXRyeSBCYXJ5c2hrb3Y6DQo+ID4+DQo+
ID4+IE9uIFR1ZSwgU2VwIDI0LCAyMDI0IGF0IDAxOjEzOjE4UE0gR01ULCBBbmRyZXcgRGF2aXMg
d3JvdGU6DQo+ID4+DQo+ID4+IE9uIDkvMjMvMjQgMTozMyBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3
cm90ZToNCj4gPj4NCj4gPj4gSGksDQo+ID4+DQo+ID4+IE9uIEZyaSwgQXVnIDMwLCAyMDI0IGF0
IDA5OjAzOjQ3QU0gR01ULCBKZW5zIFdpa2xhbmRlciB3cm90ZToNCj4gPj4NCj4gPj4gSGksDQo+
ID4+DQo+ID4+IFRoaXMgcGF0Y2ggc2V0IGlzIGJhc2VkIG9uIHRvcCBvZiBZb25nIFd1J3MgcmVz
dHJpY3RlZCBoZWFwIHBhdGNoIHNldCBbMV0uDQo+ID4+IEl0J3MgYWxzbyBhIGNvbnRpbnVhdGlv
biBvbiBPbGl2aWVyJ3MgQWRkIGRtYS1idWYgc2VjdXJlLWhlYXAgcGF0Y2ggc2V0IFsyXS4NCj4g
Pj4NCj4gPj4gVGhlIExpbmFybyByZXN0cmljdGVkIGhlYXAgdXNlcyBnZW5hbGxvYyBpbiB0aGUg
a2VybmVsIHRvIG1hbmFnZSB0aGUgaGVhcA0KPiA+PiBjYXJ2b3V0LiBUaGlzIGlzIGEgZGlmZmVy
ZW5jZSBmcm9tIHRoZSBNZWRpYXRlayByZXN0cmljdGVkIGhlYXAgd2hpY2gNCj4gPj4gcmVsaWVz
IG9uIHRoZSBzZWN1cmUgd29ybGQgdG8gbWFuYWdlIHRoZSBjYXJ2ZW91dC4NCj4gPj4NCj4gPj4g
SSd2ZSB0cmllZCB0byBhZHJlc3MgdGhlIGNvbW1lbnRzIG9uIFsyXSwgYnV0IFsxXSBpbnRyb2R1
Y2VzIGNoYW5nZXMgc28gSSdtDQo+ID4+IGFmcmFpZCBJJ3ZlIGhhZCB0byBza2lwIHNvbWUgY29t
bWVudHMuDQo+ID4+DQo+ID4+IEkga25vdyBJIGhhdmUgcmFpc2VkIHRoZSBzYW1lIHF1ZXN0aW9u
IGR1cmluZyBMUEMgKGluIGNvbm5lY3Rpb24gdG8NCj4gPj4gUXVhbGNvbW0ncyBkbWEtaGVhcCBp
bXBsZW1lbnRhdGlvbikuIElzIHRoZXJlIGFueSByZWFzb24gd2h5IHdlIGFyZQ0KPiA+PiB1c2lu
ZyBnZW5lcmljIGhlYXBzIGluc3RlYWQgb2YgYWxsb2NhdGluZyB0aGUgZG1hLWJ1ZnMgb24gdGhl
IGRldmljZQ0KPiA+PiBzaWRlPw0KPiA+Pg0KPiA+PiBJbiB5b3VyIGNhc2UgeW91IGFscmVhZHkg
aGF2ZSBURUUgZGV2aWNlLCB5b3UgY2FuIHVzZSBpdCB0byBhbGxvY2F0ZSBhbmQNCj4gPj4gZXhw
b3J0IGRtYS1idWZzLCB3aGljaCB0aGVuIGdldCBpbXBvcnRlZCBieSB0aGUgVjRMIGFuZCBEUk0g
ZHJpdmVycy4NCj4gPj4NCj4gPj4gVGhpcyBnb2VzIHRvIHRoZSBoZWFydCBvZiB3aHkgd2UgaGF2
ZSBkbWEtaGVhcHMgaW4gdGhlIGZpcnN0IHBsYWNlLg0KPiA+PiBXZSBkb24ndCB3YW50IHRvIGJ1
cmRlbiB1c2Vyc3BhY2Ugd2l0aCBoYXZpbmcgdG8gZmlndXJlIG91dCB0aGUgcmlnaHQNCj4gPj4g
cGxhY2UgdG8gZ2V0IGEgZG1hLWJ1ZiBmb3IgYSBnaXZlbiB1c2UtY2FzZSBvbiBhIGdpdmVuIGhh
cmR3YXJlLg0KPiA+PiBUaGF0IHdvdWxkIGJlIHZlcnkgbm9uLXBvcnRhYmxlLCBhbmQgZmFpbCBh
dCB0aGUgY29yZSBwdXJwb3NlIG9mDQo+ID4+IGEga2VybmVsOiB0byBhYnN0cmFjdCBoYXJkd2Fy
ZSBzcGVjaWZpY3MgYXdheS4NCj4gPj4NCj4gPj4gVW5mb3J0dW5hdGVseSBhbGwgcHJvcG9zYWxz
IHRvIHVzZSBkbWEtYnVmIGhlYXBzIHdlcmUgbW92aW5nIGluIHRoZQ0KPiA+PiBkZXNjcmliZWQg
ZGlyZWN0aW9uOiBsZXQgYXBwIHNlbGVjdCAoc29tZWhvdykgZnJvbSBhIHBsYXRmb3JtLSBhbmQN
Cj4gPj4gdmVuZG9yLSBzcGVjaWZpYyBsaXN0IG9mIGRtYS1idWYgaGVhcHMuIEluIHRoZSBrZXJu
ZWwgd2UgYXQgbGVhc3Qga25vdw0KPiA+PiB0aGUgcGxhdGZvcm0gb24gd2hpY2ggdGhlIHN5c3Rl
bSBpcyBydW5uaW5nLiBVc2Vyc3BhY2UgZ2VuZXJhbGx5IGRvZXNuJ3QNCj4gPj4gKGFuZCBzaG91
bGRuJ3QpLiBBcyBzdWNoLCBpdCBzZWVtcyBiZXR0ZXIgdG8gbWUgdG8ga2VlcCB0aGUga25vd2xl
ZGdlIGluDQo+ID4+IHRoZSBrZXJuZWwgYW5kIGFsbG93IHVzZXJzcGFjZSBkbyBpdHMgam9iIGJ5
IGNhbGxpbmcgaW50byBleGlzdGluZw0KPiA+PiBkZXZpY2UgZHJpdmVycy4NCj4gPj4NCj4gPj4g
VGhlIGlkZWEgb2YgbGV0dGluZyB0aGUga2VybmVsIGZ1bGx5IGFic3RyYWN0IGF3YXkgdGhlIGNv
bXBsZXhpdHkgb2YgaW50ZXINCj4gPj4gZGV2aWNlIGRhdGEgZXhjaGFuZ2UgaXMgYSBjb21wbGV0
ZWx5IGZhaWxlZCBkZXNpZ24uIFRoZXJlIGhhcyBiZWVuIHBsZW50eSBvZg0KPiA+PiBldmlkZW5j
ZSBmb3IgdGhhdCBvdmVyIHRoZSB5ZWFycy4NCj4gPj4NCj4gPj4gQmVjYXVzZSBvZiB0aGlzIGlu
IERNQS1idWYgaXQncyBhbiBpbnRlbnRpb25hbCBkZXNpZ24gZGVjaXNpb24gdGhhdA0KPiA+PiB1
c2Vyc3BhY2UgYW5kICpub3QqIHRoZSBrZXJuZWwgZGVjaWRlcyB3aGVyZSBhbmQgd2hhdCB0byBh
bGxvY2F0ZSBmcm9tLg0KPiA+Pg0KPiA+PiBIbW0sIG9rLg0KPiA+Pg0KPiA+PiBXaGF0IHRoZSBr
ZXJuZWwgc2hvdWxkIHByb3ZpZGUgYXJlIHRoZSBuZWNlc3NhcnkgaW5mb3JtYXRpb24gd2hhdCB0
eXBlIG9mDQo+ID4+IG1lbW9yeSBhIGRldmljZSBjYW4gd29yayB3aXRoIGFuZCBpZiBjZXJ0YWlu
IG1lbW9yeSBpcyBhY2Nlc3NpYmxlIG9yIG5vdC4NCj4gPj4gVGhpcyBpcyB0aGUgcGFydCB3aGlj
aCBpcyB1bmZvcnR1bmF0ZWx5IHN0aWxsIG5vdCB3ZWxsIGRlZmluZWQgbm9yDQo+ID4+IGltcGxl
bWVudGVkIGF0IHRoZSBtb21lbnQuDQo+ID4+DQo+ID4+IEFwYXJ0IGZyb20gdGhhdCB0aGVyZSBh
cmUgYSB3aG9sZSBidW5jaCBvZiBpbnRlbnRpb25hbCBkZXNpZ24gZGVjaXNpb24gd2hpY2gNCj4g
Pj4gc2hvdWxkIHByZXZlbnQgZGV2ZWxvcGVycyB0byBtb3ZlIGFsbG9jYXRpb24gZGVjaXNpb24g
aW5zaWRlIHRoZSBrZXJuZWwuIEZvcg0KPiA+PiBleGFtcGxlIERNQS1idWYgZG9lc24ndCBrbm93
IHdoYXQgdGhlIGNvbnRlbnQgb2YgdGhlIGJ1ZmZlciBpcyAoZXhjZXB0IGZvcg0KPiA+PiBpdCdz
IHRvdGFsIHNpemUpIGFuZCB3aGljaCB1c2UgY2FzZXMgYSBidWZmZXIgd2lsbCBiZSB1c2VkIHdp
dGguDQo+ID4+DQo+ID4+IFNvIHRoZSBxdWVzdGlvbiBpZiBtZW1vcnkgc2hvdWxkIGJlIGV4cG9z
ZWQgdGhyb3VnaCBETUEtaGVhcHMgb3IgYSBkcml2ZXINCj4gPj4gc3BlY2lmaWMgYWxsb2NhdG9y
IGlzIG5vdCBhIHF1ZXN0aW9uIG9mIGFic3RyYWN0aW9uLCBidXQgcmF0aGVyIG9uZSBvZiB0aGUN
Cj4gPj4gcGh5c2ljYWwgbG9jYXRpb24gYW5kIGFjY2Vzc2liaWxpdHkgb2YgdGhlIG1lbW9yeS4N
Cj4gPj4NCj4gPj4gSWYgdGhlIG1lbW9yeSBpcyBhdHRhY2hlZCB0byBhbnkgcGh5c2ljYWwgZGV2
aWNlLCBlLmcuIGxvY2FsIG1lbW9yeSBvbiBhDQo+ID4+IGRHUFUsIEZQR0EgUENJZSBCQVIsIFJE
TUEsIGNhbWVyYSBpbnRlcm5hbCBtZW1vcnkgZXRjLCB0aGVuIGV4cG9zZSB0aGUNCj4gPj4gbWVt
b3J5IGFzIGRldmljZSBzcGVjaWZpYyBhbGxvY2F0b3IuDQo+ID4+DQo+ID4+IFNvLCBmb3IgZW1i
ZWRkZWQgc3lzdGVtcyB3aXRoIHVuaWZpZWQgbWVtb3J5IGFsbCBidWZmZXJzIChtYXliZSBleGNl
cHQNCj4gPj4gUENJZSBCQVJzKSBzaG91bGQgY29tZSBmcm9tIERNQS1CVUYgaGVhcHMsIGNvcnJl
Y3Q/DQo+ID4+DQo+ID4+DQo+ID4+ICBGcm9tIHdoYXQgSSBrbm93IHRoYXQgaXMgY29ycmVjdCwg
eWVzLiBRdWVzdGlvbiBpcyByZWFsbHkgaWYgdGhhdCB3aWxsIHN0YXkgdGhpcyB3YXkuDQo+ID4+
DQo+ID4+IE5ldXJhbCBhY2NlbGVyYXRvcnMgbG9vayBhIGxvdCBzdHJpcHBlZCBkb3duIEZQR0Fz
IHRoZXNlIGRheXMgYW5kIHRoZSBiZW5lZml0IG9mIGxvY2FsIG1lbW9yeSBmb3IgR1BVcyBpcyBr
bm93biBmb3IgZGVjYWRlcy4NCj4gPj4NCj4gPj4gQ291bGQgYmUgdGhhdCBkZXNpZ25zIHdpdGgg
bG9jYWwgc3BlY2lhbGl6ZWQgbWVtb3J5IHNlZSBhIHJldml2YWwgYW55IHRpbWUsIHdobyBrbm93
cy4NCj4gPj4NCj4gPj4gSWYgdGhlIG1lbW9yeSBpcyBub3QgcGh5c2ljYWxseSBhdHRhY2hlZCB0
byBhbnkgZGV2aWNlLCBidXQgcmF0aGVyIGp1c3QNCj4gPj4gbWVtb3J5IGF0dGFjaGVkIHRvIHRo
ZSBDUFUgb3IgYSBzeXN0ZW0gd2lkZSBtZW1vcnkgY29udHJvbGxlciB0aGVuIGV4cG9zZQ0KPiA+
PiB0aGUgbWVtb3J5IGFzIERNQS1oZWFwIHdpdGggc3BlY2lmaWMgcmVxdWlyZW1lbnRzIChlLmcu
IGNlcnRhaW4gc2l6ZWQgcGFnZXMsDQo+ID4+IGNvbnRpZ3VvdXMsIHJlc3RyaWN0ZWQsIGVuY3J5
cHRlZCwgLi4uKS4NCj4gPj4NCj4gPj4gSXMgZW5jcnlwdGVkIC8gcHJvdGVjdGVkIGEgcGFydCBv
ZiB0aGUgYWxsb2NhdGlvbiBjb250cmFjdCBvciBzaG91bGQgaXQNCj4gPj4gYmUgZW5mb3JjZWQg
c2VwYXJhdGVseSB2aWEgYSBjYWxsIHRvIFRFRSAvIFNDTSAvIGFueXRoaW5nIGVsc2U/DQo+ID4+
DQo+ID4+DQo+ID4+IFdlbGwgdGhhdCBpcyBhIHJlYWxseSBnb29kIHF1ZXN0aW9uIEkgY2FuJ3Qg
ZnVsbHkgYW5zd2VyIGVpdGhlci4gRnJvbSB3aGF0IEkga25vdyBub3cgSSB3b3VsZCBzYXkgaXQg
ZGVwZW5kcyBvbiB0aGUgZGVzaWduLg0KPiA+Pg0KPiA+IElNSE8sIEkgdGhpbmsgRG1pdHJ5J3Mg
cHJvcG9zYWwgdG8gcmF0aGVyIGFsbG93IHRoZSBURUUgZGV2aWNlIHRvIGJlDQo+ID4gdGhlIGFs
bG9jYXRvciBhbmQgZXhwb3J0ZXIgb2YgRE1BLWJ1ZnMgcmVsYXRlZCB0byByZXN0cmljdGVkIG1l
bW9yeQ0KPiA+IG1ha2VzIHNlbnNlIHRvIG1lLiBTaW5jZSBpdCdzIHJlYWxseSB0aGUgVEVFIGlt
cGxlbWVudGF0aW9uIChPUC1URUUsDQo+ID4gQU1ELVRFRSwgVFMtVEVFIG9yIGZ1dHVyZSBRVEVF
KSB3aGljaCBzZXRzIHVwIHRoZSByZXN0cmljdGlvbnMgb24gYQ0KPiA+IHBhcnRpY3VsYXIgcGll
Y2Ugb2YgYWxsb2NhdGVkIG1lbW9yeS4gQUZBSUssIHRoYXQgaGFwcGVucyBhZnRlciB0aGUNCj4g
PiBETUEtYnVmIGdldHMgYWxsb2NhdGVkIGFuZCB0aGVuIHVzZXItc3BhY2UgY2FsbHMgaW50byBU
RUUgdG8gc2V0IHVwDQo+ID4gd2hpY2ggbWVkaWEgcGlwZWxpbmUgaXMgZ29pbmcgdG8gYWNjZXNz
IHRoYXQgcGFydGljdWxhciBETUEtYnVmLiBJdA0KPiA+IGNhbiBhbHNvIGJlIGEgc3RhdGljIGNv
bnRyYWN0IGRlcGVuZGluZyBvbiBhIHBhcnRpY3VsYXIgcGxhdGZvcm0NCj4gPiBkZXNpZ24uDQo+
ID4NCj4gPiBBcyBKZW5zIG5vdGVkIGluIHRoZSBvdGhlciB0aHJlYWQsIHdlIGFscmVhZHkgbWFu
YWdlIHNoYXJlZCBtZW1vcnkNCj4gPiBhbGxvY2F0aW9ucyAoZnJvbSBhIHN0YXRpYyBjYXJ2ZS1v
dXQgb3IgZHluYW1pY2FsbHkgbWFwcGVkKSBmb3INCj4gPiBjb21tdW5pY2F0aW9ucyBhbW9uZyBM
aW51eCBhbmQgVEVFIHRoYXQgd2VyZSBiYXNlZCBvbiBETUEtYnVmcyBlYXJsaWVyDQo+ID4gYnV0
IHNpbmNlIHdlIGRpZG4ndCByZXF1aXJlZCB0aGVtIHRvIGJlIHNoYXJlZCB3aXRoIG90aGVyIGRl
dmljZXMsIHNvDQo+ID4gd2UgcmF0aGVyIHN3aXRjaGVkIHRvIGFub255bW91cyBtZW1vcnkuDQo+
ID4NCj4gPiAgRnJvbSB1c2VyLXNwYWNlIHBlcnNwZWN0aXZlLCBpdCdzIGNsZWFuZXIgdG8gdXNl
IFRFRSBkZXZpY2UgSU9DVExzIGZvcg0KPiA+IERNQS1idWYgYWxsb2NhdGlvbnMgc2luY2UgaXQg
YWxyZWFkeSBrbm93cyB3aGljaCB1bmRlcmx5aW5nIFRFRQ0KPiA+IGltcGxlbWVudGF0aW9uIGl0
J3MgY29tbXVuaWNhdGluZyB3aXRoIHJhdGhlciB0aGFuIGZpcnN0IGZpZ3VyaW5nIG91dA0KPiA+
IHdoaWNoIERNQSBoZWFwIHRvIHVzZSBmb3IgYWxsb2NhdGlvbiBhbmQgdGhlbiBjb21tdW5pY2F0
aW5nIHdpdGggVEVFDQo+ID4gaW1wbGVtZW50YXRpb24uDQo+DQo+ICsxDQo+DQo+IEknbSBub3Qg
dGhhdCBkZWVwbHkgaW50byB0aGUgZnVuY3Rpb25hbGl0eSB0aGUgVEVFIGRldmljZSBJT0NUTHMg
ZXhwb3NlLA0KPiBzbyBjYW4ndCBqdWRnZSBpZiB3aGF0J3Mgc2FpZCBhYm92ZSBpcyBjb3JyZWN0
IG9yIG5vdC4NCj4NCj4gQnV0IGluIGdlbmVyYWwgYnVpbGRpbmcgb24gdG9wIG9mIGV4aXN0aW5n
IGluZnJhc3RydWN0dXJlIGFuZA0KPiBpbmZvcm1hdGlvbiBpcyBhIHJlYWxseSBzdHJvbmcgYXJn
dW1lbnQgZm9yIGEgZGVzaWduLg0KPg0KPiBTbyBmcm9tIG15IDEwIG1pbGUgaGlnaCBwb2ludCBv
ZiB2aWV3IHRoYXQgc291bmRzIGxpa2UgdGhlIHdheSB0byBnby4NCg0KVGhhdCBzb3VuZHMgZ29v
ZCwgSSdsbCBwcmVwYXJlIGFub3RoZXIgcGF0Y2ggc2V0IGJhc2VkIG9uIHRoYXQNCmFwcHJvYWNo
IHNvIHdlIGNhbiBzZWUgYWxsIHRoZSBkZXRhaWxzLg0KDQpUaGFua3MsDQpKZW5zDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
