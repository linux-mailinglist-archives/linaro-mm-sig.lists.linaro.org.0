Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FBA70EB90
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 04:52:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1849C43C5D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 02:52:38 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 8DCF13E81F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 May 2023 02:52:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="D2m7W/zH";
	spf=pass (lists.linaro.org: domain of chenhuacai@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=chenhuacai@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2B56663824
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 May 2023 02:52:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 230EDC433AF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 May 2023 02:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684896752;
	bh=wWoMXJfcsEqC8USOGU+FMTNfWB3fZsnW3ugmshgZ1Xk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=D2m7W/zHXM5Rv5UDEXZXkm9GPKwyahJiAcJNTh7lPcZGA1d4k0VDo3mmEMsrW1X0v
	 M2uvcl/OoEuzD0YroPBxaRJHj8MUGnNuqjubDIwLFb6viGe8tHp3nPUBiegQYjniDh
	 y2zcDYAaK9t/RtLHs5tu69b4XBkkSWYuuqzlOTFzkHcqYrDBTDq899naqYtxOFHebL
	 l3w2KlqA85AZ3tPSebf+WYsyLzsrhcUkjex6eLCaxE/oSzswQnVZ5diIG43bhOzd/l
	 2F64SEr+dU3QkthBEpbOwB9oK2ZtHUq2zLQh3KrTA4OqI9dELrD0E/eZiluTXhQFA4
	 3MSjjR4cae9Dg==
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-96f53c06babso60855266b.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 23 May 2023 19:52:32 -0700 (PDT)
X-Gm-Message-State: AC+VfDxwO6ghavcZcallwh7gR1ZPX1vOrCHRfFYZaqqUMYX2nSjrrKPs
	y5+pey2FzshqZaENcElwP1uYwZjuHzrj5yT/pDY=
X-Google-Smtp-Source: ACHHUZ6J6x108CbZr4DxK0jIw8cgX+MlpLwVdnsGTEbIP0LkrHmvxtEw2W5YjRSePJK+Xk1I+XoIEUkdVKu0hFVNxPg=
X-Received: by 2002:a17:907:7d8c:b0:96f:781e:a4d5 with SMTP id
 oz12-20020a1709077d8c00b0096f781ea4d5mr15327710ejc.77.1684896750091; Tue, 23
 May 2023 19:52:30 -0700 (PDT)
MIME-Version: 1.0
References: <20230520105718.325819-1-15330273260@189.cn> <20230520105718.325819-2-15330273260@189.cn>
 <26fd78b9-c074-8341-c99c-4e3b38cd861a@xen0n.name> <e7f911cc-6588-bc0f-8e1e-759260f5187a@189.cn>
 <ed795dc0-823a-f3d8-9e70-1cf33c0de7f0@xen0n.name> <ac2fde55-c770-fbb5-844d-50fb38dd90be@189.cn>
 <331e7baa-a83b-b0c9-37f7-0e8e39187df4@xen0n.name> <5ae49b7a-b8d2-a822-65bc-6a894d2b1b4e@189.cn>
 <0e5e4a4b-1426-ffae-e958-cf8f9aece166@xen0n.name> <69edaf49-359a-229c-c8b4-8aa3af622008@189.cn>
 <ece7821e-c4bb-f2b7-3b1d-dacc04729530@xen0n.name>
In-Reply-To: <ece7821e-c4bb-f2b7-3b1d-dacc04729530@xen0n.name>
From: Huacai Chen <chenhuacai@kernel.org>
Date: Wed, 24 May 2023 10:52:18 +0800
X-Gmail-Original-Message-ID: <CAAhV-H7yTDMrZiOCBs6U8+_K3pPDwk-S2boEy2aOJgTqoUGYGw@mail.gmail.com>
Message-ID: <CAAhV-H7yTDMrZiOCBs6U8+_K3pPDwk-S2boEy2aOJgTqoUGYGw@mail.gmail.com>
To: WANG Xuerui <kernel@xen0n.name>
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[189.cn,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,loongson.cn,linaro.org,amd.com,lists.loongnix.cn,glider.be,vger.kernel.org,lists.freedesktop.org,redhat.com,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[renesas];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8DCF13E81F
X-Spamd-Bar: --
Message-ID-Hash: KNSOEKUDMPSLMGO62Z723DUR3M2C464B
X-Message-ID-Hash: KNSOEKUDMPSLMGO62Z723DUR3M2C464B
X-MailFrom: chenhuacai@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sui Jingfeng <15330273260@189.cn>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Li Yi <liyi@loongson.cn>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, Emil Velikov <emil.l.velikov@gmail.com>, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, linaro-mm-sig@lists.linaro.org, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KNSOEKUDMPSLMGO62Z723DUR3M2C464B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBNYXkgMjMsIDIwMjMgYXQgNDoxNOKAr1BNIFdBTkcgWHVlcnVpIDxrZXJuZWxAeGVu
MG4ubmFtZT4gd3JvdGU6DQo+DQo+IE9uIDUvMjIvMjMgMjE6MTMsIFN1aSBKaW5nZmVuZyB3cm90
ZToNCj4gPiBIaSwNCj4gPg0KPiA+IE9uIDIwMjMvNS8yMiAxODoyNSwgV0FORyBYdWVydWkgd3Jv
dGU6DQo+ID4+IE9uIDIwMjMvNS8yMiAxODoxNywgU3VpIEppbmdmZW5nIHdyb3RlOg0KPiA+Pj4g
SGksDQo+ID4+Pg0KPiA+Pj4gT24gMjAyMy81LzIyIDE4OjA1LCBXQU5HIFh1ZXJ1aSB3cm90ZToN
Cj4gPj4+PiBPbiAyMDIzLzUvMjIgMTc6NDksIFN1aSBKaW5nZmVuZyB3cm90ZToNCj4gPj4+Pj4g
SGksDQo+ID4+Pj4+DQo+ID4+Pj4+IE9uIDIwMjMvNS8yMiAxNzoyOCwgV0FORyBYdWVydWkgd3Jv
dGU6DQo+ID4+Pj4+PiBPbiAyMDIzLzUvMjIgMTc6MjUsIFN1aSBKaW5nZmVuZyB3cm90ZToNCj4g
Pj4+Pj4+PiBIaSwNCj4gPj4+Pj4+Pg0KPiA+Pj4+Pj4+IE9uIDIwMjMvNS8yMSAyMDoyMSwgV0FO
RyBYdWVydWkgd3JvdGU6DQo+ID4+Pj4+Pj4+PiArICogTFMzQTQwMDAvTFMzQTUwMDAvTFMzQTYw
MDAgQ1BVLCB0aGV5IGFyZSBlcXVpcHBlZCB3aXRoDQo+ID4+Pj4+Pj4+PiBvbi1ib2FyZCB2aWRl
byBSQU0NCj4gPj4+Pj4+Pj4+ICsgKiB0eXBpY2FsbHkuIFdoaWxlIExTMkswNTAwL0xTMksxMDAw
L0xTMksyMDAwIGFyZSBsb3cgY29zdA0KPiA+Pj4+Pj4+Pj4gU29DcyB3aGljaCBzaGFyZQ0KPiA+
Pj4+Pj4+Pj4gKyAqIHRoZSBzeXN0ZW0gUkFNIGFzIHZpZGVvIFJBTSwgdGhleSBkb24ndCBoYXMg
YSBkZWRpYWNhdGVkDQo+ID4+Pj4+Pj4+PiBWUkFNLg0KPiA+Pj4+Pj4+Pg0KPiA+Pj4+Pj4+PiBD
UFUgbW9kZWxzIGFyZSBub3QgdHlwaWNhbGx5IHByZWZpeGVkIHdpdGggIkxTIiwgc28gIkxvb25n
c29uDQo+ID4+Pj4+Pj4+IDNBNDAwMC8zQTUwMDAvM0E2MDAwIi4NCj4gPj4+Pj4+Pj4NCj4gPj4+
Pj4+PiBIZXJlIGlzIGJlY2F1c2Ugd2hlbiB5b3UgZG8gcHJvZ3JhbW1pbmcsIHZhcmlhYmxlIG5h
bWUgc2hvdWxkDQo+ID4+Pj4+Pj4gcHJlZml4IHdpdGggbGV0dGVycy4NCj4gPj4+Pj4+DQo+ID4+
Pj4+PiBDb21taXQgbWVzc2FnZXMsIGNvbW1lbnRzLCBhbmQgbG9nIG1lc3NhZ2VzIGV0Yy4gYXJl
IG5hdHVyYWwNCj4gPj4+Pj4+IGxhbmd1YWdlLCBzbyBpdCdzIGJldHRlciB0byB0cmVhdCB0aGVt
IGRpZmZlcmVudGx5LiBObyBwcm9ibGVtIHRvDQo+ID4+Pj4+PiBrZWVwIGNvZGUgYXMtaXMgSU1P
Lg0KPiA+Pj4+Pj4NCj4gPj4+Pj4gVGhlbiB5b3UgZ2V0IHR3byBuYW1lIGZvciBhIHNpbmdsZSBj
aGlwLCAgdGFrZSAgTFM3QTEwMDAgYXMgYW4NCj4gPj4+Pj4gZXhhbXBsZS4NCj4gPj4+Pj4NCj4g
Pj4+Pj4gWW91IG5hbWUgaXQgYXMgTG9vbmdzb24gN0ExMDAwIGluIGNvbW1pdCBtZXNzYWdlLCAg
YW5kIHRoZW4geW91DQo+ID4+Pj4+IGhhdmUgdG8gZGVmaW5lIGFub3RoZXIgbmFtZSBpbiB0aGUg
Y29kZSwgIHNheSBMUzdBMTAwMC4NCj4gPj4+Pj4NCj4gPj4+Pj4gIkxvb25nc29uIDdBMTAwMCIg
aXMgdG9vIGxvbmcsICBub3QgYXMgY29tcGFjdCBhcyBMUzdBMTAwMC4NCj4gPj4+Pj4NCj4gPj4+
Pj4gVGhpcyBhbHNvIGF2b2lkIGJpbmQgdGhlIGNvbXBhbnkgbmFtZSB0byBhIHNwZWNpZmljIHBy
b2R1Y3QsDQo+ID4+Pj4+IGJlY2F1c2UgYSBjb21wYW55IGNhbiBwcm9kdWNlIG1hbnkgcHJvZHVj
dC4NCj4gPj4+Pg0KPiA+Pj4+IE5haCwgdGhlIGV4aXN0aW5nIGNvbnZlbnRpb24gaXMgIkxTN1h4
eHh4IiBmb3IgYnJpZGdlcyBhbmQNCj4gPj4+PiAiTG9vbmdzb24gM0F4eHh4IiBmb3IgQ1BVcyAo
U29DcyBsaWtlIDJLIGZhbGwgdW5kZXIgdGhpcyBjYXRlZ29yeQ0KPiA+Pj4+IHRvbykuIEl0J3Mg
YmV0dGVyIHRvIHN0aWNrIHdpdGggZXhpc3RpbmcgcHJhY3RpY2Ugc28gaXQgd291bGQgYmUNCj4g
Pj4+PiBmYW1pbGlhciB0byBsb25nLXRpbWUgTG9vbmdzb24vTG9vbmdBcmNoIGRldmVsb3BlcnMs
IGJ1dCBJDQo+ID4+Pj4gcGVyc29uYWxseSBkb24ndCB0aGluayBpdCB3aWxsIGhhbXBlciB1bmRl
cnN0YW5kaW5nIGlmIHlvdSBmZWVsDQo+ID4+Pj4gbGlrZSBkb2luZyBvdGhlcndpc2UuDQo+ID4+
Pj4NCj4gPj4+IENhbiB5b3UgZXhwbGFpbiB3aHkgaXQgaXMgYmV0dGVyPw0KPiA+Pj4NCj4gPj4+
IGlzIGl0IHRoYXQgdGhlIGFscmVhZHkgZXhpc3RpbmcgaXMgYmV0dGVyID8NCj4gPj4NCj4gPj4g
SXQncyBub3QgYWJvdXQgc3ViamVjdGl2ZSBwZXJjZXB0aW9uIG9mICJiZXR0ZXIiIG9yICJ3b3Jz
ZSIsIGJ1dA0KPiA+PiBhYm91dCB0cmVlLXdpZGUgY29uc2lzdGVuY3ksIGFuZCBhYm91dCByZWR1
Y2luZyBhbnkgcG90ZW50aWFsDQo+ID4+IGNvbmZ1c2lvbiBmcm9tIG5ld2NvbWVycy4gSSByZW1l
bWJlciBIdWFjYWkgb25jZSBwb2ludGluZyBvdXQgdGhhdA0KPiA+PiBvdXRzaWRlcnMgdXN1YWxs
eSBoYXZlIGEgaGFyZCB0aW1lIHJlbWVtYmVyaW5nICIxLCAyLCBhbmQgMyBhcmUgQ1BVcywNCj4g
Pj4gc29tZSAyIGFyZSBTb0NzLCA3IGFyZSBicmlkZ2UgY2hpcHMiLCBhbmQgY29uc2lzdGVudGx5
IHJlZmVycmluZyB0bw0KPiA+PiB0aGUgYnJpZGdlIGNoaXBzIHRocm91Z2hvdXQgdGhlIHRyZWUg
YXMgIkxTN0EiIGhlbHBlZC4NCj4gPj4NCj4gPj4gSW4gYW55IGNhc2UsIGZvciB0aGUgc2FrZSBv
ZiBjb25zaXN0ZW5jeSwgeW91IGNhbiBkZWZpbml0ZWx5IHJlZmVyIHRvDQo+ID4+IHRoZSBDUFUg
bW9kZWxzIGluIG5hdHVyYWwgbGFuZ3VhZ2UgbGlrZSAiTFMzQXh4eHgiOyBqdXN0IG1ha2Ugc3Vy
ZSB0bw0KPiA+PiByZWZhY3RvciBmb3IgZXhhbXBsZSBldmVyeSBvY2N1cnJlbmNlIGluIGFyY2gv
bG9vbmdhcmNoIGFuZCBvdGhlcg0KPiA+PiBwYXJ0cyBvZiBkcml2ZXJzLy4gVGhhdCdzIGEgbG90
IG9mIGNodXJuLCB0aG91Z2gsIHNvIEkgZG9uJ3QgZXhwZWN0DQo+ID4+IHN1Y2ggY2hhbmdlcyB0
byBnZXQgYWNjZXB0ZWQsIGFuZCB0aGF0J3Mgd2h5IHRoZSB0cmVlLXdpZGUNCj4gPj4gY29uc2lz
dGVuY3kgc2hvdWxkIGJlIGZhdm9yZWQgb3ZlciB0aGUgbG9jYWwgb25lLg0KPiA+Pg0KPiA+IFRo
ZXJlIGFyZSBkb2N1bWVudFsxXSB3aGljaCBuYW1lZCBMUzdBMTAwMCBicmlkZ2UgY2hpcCBhcyBM
b29uZ3Nvbg0KPiA+IDdBMTAwMCBCcmlkZ2UsDQo+ID4NCj4gPiB3aGljaCBpcyBvcHBvc2VkIHRv
IHdoYXQgeW91IGhhdmUgc2FpZCAidGhlIGV4aXN0aW5nIGNvbnZlbnRpb24gaXMNCj4gPiBMUzdY
eHh4eCBmb3IgYnJpZGdlcyIuDQo+ID4NCj4gPg0KPiA+IHRoZXJlIGFyZSBhbHNvIHBsZW50eSBw
cm9qZWN0c1syXSB3aGljaCBlbmNvZGUgbHMyazEwMDAgYXMgcHJvamVjdA0KPiA+IG5hbWUsIHdo
aWNoIHNpbXBseQ0KPiA+DQo+ID4gZG9uJ3QgZmFsbCBpbnRvIHRoZSBjYXRlZ29yeSBhcyB5b3Ug
aGF2ZSBtZW50aW9uZWQoIkxvb25nc29uIDNBeHh4eCIpLg0KPiA+DQo+ID4NCj4gPiBTZWUgWzFd
WzJdIGZvciByZWZlcmVuY2UsIGhvdyB0byBleHBsYWluIHRoaXMgcGhlbm9tZW5vbiB0aGVuPw0K
Pg0KPiBUdXJuIGRvd24gdGhlIGZsYW1lcyBhIGxpdHRsZSBiaXQsIG9rYXk/IDstKQ0KPg0KPiBX
aGF0IEknbSBkZXNjcmliaW5nIGlzIHNpbXBseSB0aGUga2VybmVsIGNvbnZlbnRpb24uIFRyeSBn
cmVwcGluZyB0aGUNCj4gY29tbWl0IGxvZyBvZiBsaW51eDogeW91IGNhbiBzZWUgYWxtb3N0IGFs
bCBtZW50aW9ucyBvZiAiTG9vbmdzb24gN0EiIGlzDQo+IGp1c3QgcmVmZXJyaW5nIHRvIHRoZSBt
YW51YWwgd2hpY2ggaXMgbmFtZWQgbGlrZSB0aGF0OyB0aGF0ICJMUzNBIiBvbmx5DQo+IGV2ZXIg
YXBwZWFyIGFzIHBhcnQgb2Ygc29tZSBib2FyZCBuYW1lOyBhbmQgdGhhdCAiTFMySyIgb25seSBi
cmllZmx5DQo+IGFwcGVhcmluZyB3aGVuIG1lbnRpb25lZCB0b2dldGhlciB3aXRoIExTN0EsIG1h
eWJlIHRoYXQncyBlbXBoYXNpcyBvbg0KPiB0aGUgU29DJ3MgYnJpZGdlIHBhcnQuICJMb29uZ3Nv
biBbMTIzXSIgYW5kICJMUzdBIiBhcmUgY2xlYXJseSB0aGUNCj4gbWFqb3JpdHkgdGhlcmUuDQo+
DQo+IEJ1dCwgYXMgdGhlIGNvbnZlbnRpb24gd2FzIGVzdGFibGlzaGVkIGJ5IEh1YWNhaSBhbmQg
SSdtIG9ubHkNCj4gcmVpdGVyYXRpbmcgaGlzIHJ1bGVzLCB5b3UgbWF5IGluc3RlYWQganVzdCBj
aGVjayB3aXRoIGhpbSBhbmQgbm90DQo+IGNvbnRpbnVlIHRoZSBib3JpbmcgZGViYXRlIHdpdGgg
bWUuIE1lYW53aGlsZSBtYXliZSBrZWVwaW5nIGFsbCAiTFMzQSINCj4gYW5kL29yICJMUzJLIiBp
cyBraW5kIG9mIGFjY2VwdGFibGUsIGdpdmVuIHN1Y2ggbmFtaW5nIGlzIGV0Y2hlZCByaWdodA0K
PiBvbiB0aGUgY2hpcCdzIHBhY2thZ2luZzsgSSdkIGZvbGxvdyB3aGF0ZXZlciBIdWFjYWkgbWFu
ZGF0ZXMuDQpZZXMsIEkgY2FuIGNvbmZpcm0gdGhhdC4NCg0KRm9yIENQVTogd2UgYWx3YXlzIHVz
ZSB0aGUgZnVsbCBuYW1lLCAiTG9vbmdzb24tM0EiLg0KRm9yIEJyaWRnZTogd2Ugb25seSB1c2Ug
dGhlIGZ1bGwgbmFtZSB3aGVuIHJlZmVycmluZyB0byB0aGUgbWFudWFscywNCm90aGVyd2lzZSB1
c2UgdGhlIGFiYnJldi4gbmFtZSAiTFM3QSIuDQpGb3IgU29DOiBkZXBlbmRpbmcgb24gc2NlbmFy
aW9zLCBpbiBhcmNoaXRlY3R1cmFsIGNvZGUgd2UgdXN1YWxseSB1c2UNCnRoZSBmdWxsIG5hbWUg
Ikxvb25nc29uLTJLIiwgYW5kIGluIGRyaXZlcnMgaXQgaXMgYWxsb3dlZCB0byBjYWxsDQoiTFMy
SyIgdG8ga2VlcCBjb25zaXN0ZW5jeSwgZXNwZWNpYWxseSBpbiBEVFMuDQoNCkh1YWNhaQ0KPg0K
PiAtLQ0KPiBXQU5HICJ4ZW4wbiIgWHVlcnVpDQo+DQo+IExpbnV4L0xvb25nQXJjaCBtYWlsaW5n
IGxpc3Q6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xvb25nYXJjaC8NCj4NCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
