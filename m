Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8DB619314
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 10:03:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 433583F5CC
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 09:03:34 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by lists.linaro.org (Postfix) with ESMTPS id 56ECD3EC14
	for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Nov 2022 09:03:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=Wvt10Hlg;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.42 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id f5so11591679ejc.5
        for <linaro-mm-sig@lists.linaro.org>; Fri, 04 Nov 2022 02:03:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xnK6kWVXoqnNcDEY5vyrY6CV3Lr2l3QPzy5usl2/3wI=;
        b=Wvt10HlgwLHq9bwijyln95eMHIZhkk5KRBOGybT2B2YtvE7DA3xK4r6DvcYE13vU1f
         GbXARg/5G96S+A/7LJcvC/8L8TNl9KD/Oq+EdpMkXZcRAAzCjVNzwDr68OBCJgXt233S
         AunheYZ7aQrkcfYyy1AD259wjqhyvaT8w64TV2TRYSr2MlTw3Fc0W29A3lfOT0imK5IY
         XVzxu8heNPV4N0HLiMRAS44z0Cp6DorOLxNsFMQS1VVfobCgjy6zLeGcQszvprqpnQyL
         yftBUymAvtrDOgU6G0XsKL+lIxs2NIpmQfbjh+yz2JL2Mu2H4qwAJqMzVCqpk5O8f6Ro
         GulQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xnK6kWVXoqnNcDEY5vyrY6CV3Lr2l3QPzy5usl2/3wI=;
        b=VLp+xgTFZhgxsTL+ZC8LqbjE5BzVM9UF4nw7vUkxvA5kXSZtgemBCO2v79uhBI5UvT
         1cBMCi+CERSuVmsgqaA8LmjuHFr7p0v0NOg3koJNB43m5yacj108NbBR0yf/tEjVZn3q
         3yd28E5Hxk6vjd57GQ/MDjuqehvv1i3QRmBlZu5+swUZ2u+0D5G3hlcl2QXshQiikklg
         4JpqLe5uUZEXPa0KlixnxhDFciumlArzL7jxlXAuFpTJyxGalGwvcwxlVEuzB8gl5aU4
         z5U+cM6ACJWThNW9y+KNFibkDXYKwNEsReFMAJPMWYIck1218N5jW2tv0tm4mWAaHkHK
         jbgg==
X-Gm-Message-State: ACrzQf36VG7NchYKGYPTOB9+ddkOD6RPLGMWdBijujWezWB6MxHT/kFZ
	mbgnfy7hOhFLwIPgVZgl5uM=
X-Google-Smtp-Source: AMsMyM4qBvcpDi1ZpdbEdg42v7bUNRJlZjvUmHzExHJZrdG4n26KhU60AgcVh9NXDVvQnmaR3OczeQ==
X-Received: by 2002:a17:907:7d8f:b0:78e:2cba:560f with SMTP id oz15-20020a1709077d8f00b0078e2cba560fmr33608159ejc.173.1667552596239;
        Fri, 04 Nov 2022 02:03:16 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:13f7:f69a:a72b:6707? ([2a02:908:1256:79a0:13f7:f69a:a72b:6707])
        by smtp.gmail.com with ESMTPSA id m4-20020a17090607c400b007803083a36asm1517757ejc.115.2022.11.04.02.03.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 02:03:15 -0700 (PDT)
Message-ID: <441e7155-2fa3-e34f-1bf6-706a0e5698d8@gmail.com>
Date: Fri, 4 Nov 2022 10:03:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Daniel Stone <daniel@fooishbar.org>
References: <20221020121316.3946-1-christian.koenig@amd.com>
 <3d7353f3fa5905ce18e5b2d92f758f098189bc5a.camel@pengutronix.de>
 <7f5eff36-6886-bb06-061a-dd4263b61605@gmail.com>
 <f5de84cfe81fee828bbe0d47d379028d28ef6ca6.camel@pengutronix.de>
 <e02cedc2-6741-8813-a7a5-f8769e301745@gmail.com>
 <a53e5df51ec0f2f9d4c2d377c0cc5ba85f2e58ff.camel@ndufresne.ca>
 <9d716641-55c6-1590-26c2-1c3b14a28226@gmail.com>
 <CAPj87rMPkmimR_RJHhxYZokH__TVpPArk0h6drOUSx7Z9+oAHA@mail.gmail.com>
 <11a6f97c-e45f-f24b-8a73-48d5a388a2cc@gmail.com>
 <caf4d6b82843788db97555a58bc9e33915e5b50a.camel@ndufresne.ca>
 <b422be59-4b4b-2d0d-8e8c-b19f27c6832e@gmail.com>
 <90a1fb6101483971ef14d22370aac50d494a4752.camel@ndufresne.ca>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <90a1fb6101483971ef14d22370aac50d494a4752.camel@ndufresne.ca>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --------
X-Rspamd-Queue-Id: 56ECD3EC14
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.42:from];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.972];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org]
Message-ID-Hash: NTQHCIDUOETHGC35K2Y3CWXUBS27W7ID
X-Message-ID-Hash: NTQHCIDUOETHGC35K2Y3CWXUBS27W7ID
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, robdclark@gmail.com, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NTQHCIDUOETHGC35K2Y3CWXUBS27W7ID/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDMuMTEuMjIgdW0gMjM6MTYgc2NocmllYiBOaWNvbGFzIER1ZnJlc25lOg0KPiBbU05JUF0N
Cj4+IFdlIGFscmVhZHkgaGFkIG51bWVyb3VzIHByb2plY3RzIHdoZXJlIHdlIHJlcG9ydGVkIHRo
aXMgcHJhY3RpY2UgYXMgYnVncw0KPj4gdG8gdGhlIEdTdHJlYW1lciBhbmQgRkZNUEVHIHByb2pl
Y3QgYmVjYXVzZSBpdCB3b24ndCB3b3JrIG9uIHg4NiB3aXRoIGRHUFVzLg0KPiBMaW5rcyA/IFJl
bWVtYmVyIHRoYXQgSSBkbyByZWFkIGV2ZXJ5IHNpbmdsZSBidWdzIGFuZCBlbWFpbHMgYXJvdW5k
IEdTdHJlYW1lcg0KPiBwcm9qZWN0LiBJIGRvIG1haW50YWluIG9sZGVyIGFuZCBuZXdlciBWNEwy
IHN1cHBvcnQgaW4gdGhlcmUuIEkgYWxzbyBkaWQNCj4gY29udHJpYnV0ZSBhIGxvdCB0byB0aGUg
bWVjaGFuaXNtIEdTdHJlYW1lciBoYXZlIGluLXBsYWNlIHRvIHJldmVyc2UgdGhlDQo+IGFsbG9j
YXRpb24uIEluIGZhY3QsIGl0cyBpbXBsZW1lbnRlZCwgdGhlIHByb2JsZW0gYmVpbmcgdGhhdCBv
biBnZW5lcmljIExpbnV4LA0KPiB0aGUgcmVjZWl2ZXIgZWxlbWVudCwgbGlrZSB0aGUgR0wgZWxl
bWVudCBhbmQgdGhlIGRpc3BsYXkgc2luayBkb24ndCBoYXZlIGFueQ0KPiBBUEkgdGhleSBjYW4g
cmVseSBvbiB0byBhbGxvY2F0ZSBtZW1vcnkuIFRodXMsIHRoZXkgZG9uJ3QgaW1wbGVtZW50IHdo
YXQgd2UgY2FsbA0KPiB0aGUgYWxsb2NhdGlvbiBvZmZlciBpbiBHU3RyZWFtZXIgdGVybS4gVmVy
eSBvZnRlbiB0aG91Z2gsIG9uIG90aGVyIG1vZGVybiBPUywNCj4gb3IgQVBJcyBsaWtlIFZBLCB0
aGUgbWVtb3J5IG9mZmVyIGlzIHJlcGxhY2VkIGJ5IGEgY29udGV4dC4gU28gdGhlIGFsbG9jYXRp
b24gaXMNCj4gZG9uZSBmcm9tIGEgImNvbnRleHQiIHdoaWNoIGlzIG5laXRoZXIgYW4gaW1wb3J0
ZXIgb3IgYW4gZXhwb3J0ZXIuIFRoaXMgaXMNCj4gbW9zdGx5IGZvdW5kIG9uIE1hY09TIGFuZCBX
aW5kb3dzLg0KPg0KPiBXYXMgdGhlcmUgQVBJcyBzdWdnZXN0ZWQgdG8gYWN0dWFsbHkgbWFrZSBp
dCBtYW5hZ2VhYmxlIGJ5IHVzZXJsYW5kIHRvIGFsbG9jYXRlDQo+IGZyb20gdGhlIEdQVT8gWWVz
LCB0aGlzIHdoYXQgTGludXggRGV2aWNlIEFsbG9jYXRvciBpZGVhIGlzIGZvci4gSXMgdGhhdCBB
UEkNCj4gcmVhZHksIG5vLg0KDQpXZWxsLCB0aGF0IHN0dWZmIGlzIGFic29sdXRlbHkgcmVhZHk6
IA0KaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L3NvdXJjZS9kcml2ZXJz
L2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYyNMMTc1IA0KV2hhdCBkbyB5b3UgdGhpbmsgSSdt
IHRhbGtpbmcgYWJvdXQgYWxsIHRoZSB0aW1lPw0KDQpETUEtYnVmIGhhcyBhIGxlbmd0aHkgc2Vj
dGlvbiBhYm91dCBDUFUgYWNjZXNzIHRvIGJ1ZmZlcnMgYW5kIGNsZWFybHkgDQpkb2N1bWVudHMg
aG93IGFsbCBvZiB0aGF0IGlzIHN1cHBvc2VkIHRvIHdvcms6IA0KaHR0cHM6Ly9lbGl4aXIuYm9v
dGxpbi5jb20vbGludXgvbGF0ZXN0L3NvdXJjZS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jI0wx
MTYwIA0KVGhpcyBpbmNsdWRlcyBicmFrZXRpbmcgb2YgQ1BVIGFjY2VzcyB3aXRoIGRtYV9idWZf
YmVnaW5fY3B1X2FjY2VzcygpIA0KYW5kIGRtYV9idWZfZW5kX2NwdV9hY2Nlc3MoKSwgYXMgd2Vs
bCBhcyB0cmFuc2FjdGlvbiBtYW5hZ2VtZW50IGJldHdlZW4gDQpkZXZpY2VzIGFuZCB0aGUgQ1BV
IGFuZCBldmVuIGltcGxpY2l0IHN5bmNocm9uaXphdGlvbi4NCg0KVGhpcyBzcGVjaWZpY2F0aW9u
IGlzIHRoZW4gaW1wbGVtZW50ZWQgYnkgdGhlIGRpZmZlcmVudCBkcml2ZXJzIA0KaW5jbHVkaW5n
IFY0TDI6IA0KaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L3NvdXJjZS9k
cml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1zZy5jI0w0NzMNCg0K
QXMgd2VsbCBhcyB0aGUgZGlmZmVyZW50IERSTSBkcml2ZXJzOiANCmh0dHBzOi8vZWxpeGlyLmJv
b3RsaW4uY29tL2xpbnV4L2xhdGVzdC9zb3VyY2UvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2RtYWJ1Zi5jI0wxMTcgDQpodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC9s
YXRlc3Qvc291cmNlL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMj
TDIzNA0KDQpUaGlzIGRlc2lnbiB3YXMgdGhlbiB1c2VkIGJ5IHVzIHdpdGggdmFyaW91cyBtZWRp
YSBwbGF5ZXJzIG9uIGRpZmZlcmVudCANCmN1c3RvbWVyIHByb2plY3RzLCBpbmNsdWRpbmcgUU5B
UCBodHRwczovL3d3dy5xbmFwLmNvbS9lbi9wcm9kdWN0L3RzLTg3NyANCmFzIHdlbGwgYXMgdGhl
IG5ld2VzdCBUZXNsYSANCmh0dHBzOi8vd3d3LmFtZC5jb20vZW4vcHJvZHVjdHMvZW1iZWRkZWQt
YXV0b21vdGl2ZS1zb2x1dGlvbnMNCg0KSSB3b24ndCBnbyBpbnRvIHRoZSBkZXRhaWxzIGhlcmUs
IGJ1dCB3ZSBhcmUgdXNpbmcgZXhhY3RseSB0aGUgYXBwcm9hY2ggDQpJJ3ZlIG91dGxpbmVkIHRv
IGxldCB1c2Vyc3BhY2UgY29udHJvbCB0aGUgRE1BIGJldHdlZW4gdGhlIGRpZmZlcmVudCANCmRl
dmljZSBpbiBxdWVzdGlvbi4gSSdtIG9uZSBvZiB0aGUgbWFpbiBkZXNpZ25lcnMgb2YgdGhhdCBh
bmQgb3VyIA0KbXVsdGltZWRpYSBhbmQgbWVzYSB0ZWFtIGhhcyB1cC1zdHJlYW1lZCBxdWl0ZSBh
IG51bWJlciBvZiBjaGFuZ2VzIGZvciANCnRoaXMgcHJvamVjdC4NCg0KSSdtIG5vdCB0aGF0IHdl
bGwgaW50byBkaWZmZXJlbnQgQVJNIGJhc2VkIHNvbHV0aW9ucyBiZWNhdXNlIHdlIGFyZSBqdXN0
IA0KcmVjZW50bHkgZ2V0dGluZyByZXN1bHRzIHRoYXQgdGhpcyBzdGFydHMgdG8gd29yayB3aXRo
IEFNRCBHUFVzLCBidXQgSSdtIA0KcHJldHR5IHN1cmUgdGhhdCB0aGUgZGVzaWduIHNob3VsZCBi
ZSBhYmxlIHRvIGhhbmRsZSB0aGF0IGFzIHdlbGwuDQoNClNvIHdlIGhhdmUgY2xlYXJseSBwcm92
ZSB0aGF0IHRoaXMgZGVzaWduIHdvcmtzLCBldmVuIHdpdGggc3BlY2lhbCANCnJlcXVpcmVtZW50
cyB3aGljaCBhcmUgd2F5IG1vcmUgY29tcGxleCB0aGFuIHdoYXQgd2UgYXJlIGRpc2N1c3Npbmcg
DQpoZXJlLiBXZSBoYWQgY2FzZXMgd2hlcmUgd2UgdXNlZCBHU3RyZWFtZXIgdG8gZmVlZCBETUEt
YnVmIGhhbmRsZXMgaW50byANCm11bHRpcGxlIGRldmljZXMgd2l0aCBkaWZmZXJlbnQgZm9ybWF0
IHJlcXVpcmVtZW50cyBhbmQgdGhhdCBzZWVtcyB0byANCndvcmsgZmluZS4NCg0KLS0tLS0NCg0K
QnV0IGVub3VnaCBvZiB0aGlzIHJhbnQuIEFzIEkgd3JvdGUgTHVjYXMgYXMgd2VsbCB0aGlzIGRv
ZXNuJ3QgaGVscCB1cyANCmFueSBmdXJ0aGVyIGluIHRoZSB0ZWNobmljYWwgZGlzY3Vzc2lvbi4N
Cg0KVGhlIG9ubHkgdGVjaG5pY2FsIGFyZ3VtZW50IEkgaGF2ZSBpcyB0aGF0IGlmIHNvbWUgdXNl
cnNwYWNlIA0KYXBwbGljYXRpb25zIGZhaWwgdG8gdXNlIHRoZSBwcm92aWRlZCBVQVBJIHdoaWxl
IG90aGVycyB1c2UgaXQgY29ycmVjdGx5IA0KdGhlbiB0aGlzIGlzIGNsZWFybHkgbm90IGEgZ29v
ZCByZWFzb24gdG8gY2hhbmdlIHRoZSBVQVBJLCBidXQgcmF0aGVyIGFuIA0KYXJndW1lbnQgdG8g
Y2hhbmdlIHRoZSBhcHBsaWNhdGlvbnMuDQoNCklmIHRoZSBhcHBsaWNhdGlvbiBzaG91bGQgYmUg
a2VwdCBzaW1wbGUgYW5kIGRldmljZSBpbmRlcGVuZGVudCB0aGVuIA0KYWxsb2NhdGluZyB0aGUg
YnVmZmVyIGZyb20gdGhlIGRldmljZSBpbmRlcGVuZGVudCBETUEgaGVhcHMgd291bGQgYmUgDQpl
bm91Z2ggYXMgd2VsbC4gQ2F1c2UgdGhhdCBwcm92aWRlciBpbXBsZW1lbnRzIHRoZSBuZWNlc3Nh
cnkgaGFuZGxpbmcgDQpmb3IgZG1hX2J1Zl9iZWdpbl9jcHVfYWNjZXNzKCkgYW5kIGRtYV9idWZf
ZW5kX2NwdV9hY2Nlc3MoKS4NCg0KSSdtIGEgYml0IHN1cnByaXNlZCB0aGF0IHdlIGFyZSBhcmd1
aW5nIGFib3V0IHN0dWZmIGxpa2UgdGhpcyBiZWNhdXNlIHdlIA0Kc3BlbmQgYSBsb3Qgb2YgZWZm
b3J0IHRyeWluZyB0byBkb2N1bWVudCB0aGlzLiBEYW5pZWwgZ2F2ZSBtZSB0aGUgam9iIHRvIA0K
Zml4wqAgdGhpcyBkb2N1bWVudGF0aW9uLCBidXQgYWZ0ZXIgcmVhZGluZyB0aHJvdWdoIGl0IG11
bHRpcGxlIHRpbWVzIG5vdyANCkkgY2FuJ3Qgc2VlbSB0byBmaW5kIHdoZXJlIHRoZSBkZXNpZ24g
YW5kIHRoZSBkZXNpcmVkIGJlaGF2aW9yIGlzIHVuY2xlYXIuDQoNCldoYXQgaXMgY2xlYXJseSBh
IGJ1ZyBpbiB0aGUga2VybmVsIGlzIHRoYXQgd2UgZG9uJ3QgcmVqZWN0IHRoaW5ncyB3aGljaCAN
Cndvbid0IHdvcmsgY29ycmVjdGx5IGFuZCB0aGlzIGlzIHdoYXQgdGhpcyBwYXRjaCBoZXJlIGFk
ZHJlc3Nlcy4gV2hhdCB3ZSANCmNvdWxkIHRhbGsgYWJvdXQgaXMgYmFja3dhcmQgY29tcGF0aWJp
bGl0eSBmb3IgdGhpcyBwYXRjaCwgY2F1c2UgaXQgDQptaWdodCBsb29rIGxpa2UgaXQgYnJlYWtz
IHRoaW5ncyB3aGljaCBwcmV2aW91c2x5IHVzZWQgdG8gd29yayBhdCBsZWFzdCANCnBhcnRpYWxs
eS4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
