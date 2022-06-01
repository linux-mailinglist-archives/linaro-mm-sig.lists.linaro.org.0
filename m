Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E7CD953A947
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 16:38:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 23C593ED16
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 14:38:59 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id A37743ED16
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jun 2022 14:38:54 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id n124-20020a1c2782000000b003972dfca96cso1210750wmn.4
        for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Jun 2022 07:38:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=nEz+76T79tFW0RCrZGZI21N3hxWVslYlXYg2VKXX6II=;
        b=MaD8PwmnHt8a09T+peqTHwVOA9ZMJagO1K5G+SyV6SZNU5n+F08WpEiHeJK3218K7q
         TpMa2jHtVr6XzwZz/ZwmfQLeBpaol/DjLjdCgPEuGdts3zI+eeo5NBCLcFvgL1ZP7RD6
         ioO/06Cr9tKOOMtD7GD9rb96R+083ZmEC0FgFh49pdInij8WyfudEHMhbbnzxvPO0cnl
         NAsd2tz/9kZ9GjmlRo3jIZcOE2UrxK0mZt2K0ezbG16koclnfi0uXizmzNTmgP1BeCrB
         gD3TN7uQWiJjBDB+QcU6rgIeiE87c2Uf8tumpI6vGFZpEp5j6HBVnKe/wAZaAMVzCe3d
         oc4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=nEz+76T79tFW0RCrZGZI21N3hxWVslYlXYg2VKXX6II=;
        b=0XmgoHbOUEYdj4k36AUkhUtAGyXFzN0qGoYxBHLzXiuCk26f/ckwrYWP1HMNE7qjeq
         5eh7txnY8rhH1I2qib0kOYyfYx5G7/0jgnamrXkdle0jgMm30M+LWQ99etyldIeex9YJ
         dIpDgpx5aGwcN7V1ky8Qn3hcWhpil7tQflKgIZ+eVVcn5a6R/bPrZ3tYyBzGGYkmNUGI
         aokFCLp9Az5MrdOnBDXCA7hG9U05/Rqh89g3auYZS+WcFLwU78Hr0H2UnBSEYjotEJ94
         RTnsVylUCdXrCmQAdEa9jwtHlhQmFRuOgP2cJvpgt5UZC9CLdnC+wmw1F+O/huZPF8+L
         VN+Q==
X-Gm-Message-State: AOAM533AGW0KGKW4jITiX567TwpfDEs1r8/g1oKANAF8x4UoY94RE7LT
	Ymid9nJmsarLzDshrWTKFKo=
X-Google-Smtp-Source: ABdhPJxFJm/fvrtPm0Q76kR0LnUENBqB8SBsBwD/wEAz7gTa4nHm3tJgWR7y3ldaWLBOVk3IV9s8LQ==
X-Received: by 2002:a7b:cb91:0:b0:397:3225:244 with SMTP id m17-20020a7bcb91000000b0039732250244mr28954441wmi.68.1654094333691;
        Wed, 01 Jun 2022 07:38:53 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:d1fb:e1e4:e193:e55f? ([2a02:908:1256:79a0:d1fb:e1e4:e193:e55f])
        by smtp.gmail.com with ESMTPSA id u12-20020adfdb8c000000b002119c1a03e4sm503684wri.31.2022.06.01.07.38.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 07:38:52 -0700 (PDT)
Message-ID: <a009c207-a5fa-af1e-b961-8083b48360bf@gmail.com>
Date: Wed, 1 Jun 2022 16:38:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Sergey Senozhatsky <senozhatsky@chromium.org>
References: <20220530142232.2871634-1-senozhatsky@chromium.org>
 <7eee4274-bd69-df8d-9067-771366217804@amd.com> <YpWCvniLzJfcp684@google.com>
 <33aba213-b6ad-4a15-9272-c62f5dfb1fb7@gmail.com>
 <Ypd3Us3a93aLonqT@google.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <Ypd3Us3a93aLonqT@google.com>
Message-ID-Hash: IFCJI4D5EGVRYQF6BW4DMZTIYEW2CPTK
X-Message-ID-Hash: IFCJI4D5EGVRYQF6BW4DMZTIYEW2CPTK
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Tomasz Figa <tfiga@chromium.org>, Ricardo Ribalda <ribalda@chromium.org>, Christoph Hellwig <hch@infradead.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: allow dma fence to have their own lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IFCJI4D5EGVRYQF6BW4DMZTIYEW2CPTK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDEuMDYuMjIgdW0gMTY6Mjcgc2NocmllYiBTZXJnZXkgU2Vub3poYXRza3k6DQo+IE9uICgy
Mi8wNi8wMSAxNDo0NSksIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBBbSAzMS4wNS4yMiB1
bSAwNDo1MSBzY2hyaWViIFNlcmdleSBTZW5vemhhdHNreToNCj4+PiBPbiAoMjIvMDUvMzAgMTY6
NTUpLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+PiBBbSAzMC4wNS4yMiB1bSAxNjoyMiBz
Y2hyaWViIFNlcmdleSBTZW5vemhhdHNreToNCj4+Pj4+IFtTTklQXQ0KPj4+Pj4gU28gdGhlIGBs
b2NrYCBzaG91bGQgaGF2ZSBhdCBsZWFzdCBzYW1lIGxpZmVzcGFuIGFzIHRoZSBETUEgZmVuY2UN
Cj4+Pj4+IHRoYXQgYm9ycm93cyBpdCwgd2hpY2ggaXMgaW1wb3NzaWJsZSB0byBndWFyYW50ZWUg
aW4gb3VyIGNhc2UuDQo+Pj4+IE5vcGUsIHRoYXQncyBub3QgY29ycmVjdC4gVGhlIGxvY2sgc2hv
dWxkIGhhdmUgYXQgbGVhc3Qgc2FtZSBsaWZlc3BhbiBhcyB0aGUNCj4+Pj4gY29udGV4dCBvZiB0
aGUgRE1BIGZlbmNlLg0KPj4+IEhvdyBkb2VzIG9uZSBrbm93IHdoZW4gaXQncyBzYWZlIHRvIHJl
bGVhc2UgdGhlIGNvbnRleHQ/IERNQSBmZW5jZQ0KPj4+IG9iamVjdHMgYXJlIHN0aWxsIHRyYW5z
cGFyZW50bHkgcmVmY291bnQtZWQgYW5kICJsaXZlIHRoZWlyIG93biBsaXZlcyIsDQo+Pj4gaG93
IGRvZXMgb25lIHN5bmNocm9uaXplIGxpZmVzcGFucz8NCj4+IFdlbGwsIHlvdSBkb24ndC4NCj4+
DQo+PiBJZiB5b3UgaGF2ZSBhIGR5bmFtaWMgY29udGV4dCBzdHJ1Y3R1cmUgeW91IG5lZWQgdG8g
cmVmZXJlbmNlIGNvdW50IHRoYXQgYXMNCj4+IHdlbGwuIEluIG90aGVyIHdvcmRzIGV2ZXJ5IHRp
bWUgeW91IGNyZWF0ZSBhIGZlbmNlIGluIHlvdXIgY29udGV4dCB5b3UgbmVlZA0KPj4gdG8gaW5j
cmVtZW50IHRoZSByZWZlcmVuY2UgY291bnQgYW5kIGV2ZXJ5IHRpbWUgYSBmZW5jZSBpcyByZWxl
YXNlIHlvdQ0KPj4gZGVjcmVtZW50IGl0Lg0KPiBPSyB0aGVuIGZlbmNlIHJlbGVhc2Ugc2hvdWxk
IGJlIGFibGUgdG8gcG9pbnQgYmFjayB0byBpdHMgImNvbnRleHQiDQo+IHN0cnVjdHVyZS4gRWl0
aGVyIGEgInByaXZhdGUiIGRhdGEgaW4gZG1hIGZlbmNlIG9yIHdlIG5lZWQgdG8gImVtYmVkIg0K
PiBmZW5jZSBpbnRvIGFub3RoZXIgb2JqZWN0IChyZWZjb3VudGVkKSB0aGF0IG93bnMgdGhlIGxv
Y2sgYW5kIHByb3ZpZGUNCj4gZG1hIGZlbmNlIG9wcy0+cmVsZWFzZSBjYWxsYmFjaywgd2hpY2gg
Y2FuIGNvbnRhaW5lcl9vZigpIHRvIHRoZSBvYmplY3QNCj4gdGhhdCBkbWEgZmVuY2UgaXMgZW1i
ZWRkZWQgaW50by4NCj4NCj4gSSB0aGluayB5b3UgYXJlIHN1Z2dlc3RpbmcgdGhlIGxhdHRlci4g
VGhhbmtzIGZvciBjbGFyaWZpY2F0aW9ucy4NCg0KRGFuaWVsIG1pZ2h0IGh1cnQgbWUgZm9yIHRo
aXMsIGJ1dCBpZiB5b3UgcmVhbGx5IG9ubHkgbmVlZCBhIHBvaW50ZXIgdG8gDQp5b3VyIGNvbnRl
eHQgdGhlbiB3ZSBjb3VsZCBzYXkgdGhhdCB1c2luZyBhIHBvaW50ZXIgdmFsdWUgZm9yIHRoZSAN
CmNvbnRleHQgZmllbGQgaXMgb2sgYXMgd2VsbC4NCg0KVGhhdCBzaG91bGQgYmUgZmluZSBhcyB3
ZWxsIGFzIGxvbmcgYXMgeW91IGNhbiBndWFyYW50ZWUgdGhhdCBpdCB3aWxsIGJlIA0KdW5pcXVl
IGR1cmluZyB0aGUgbGlmZXRpbWUgb2YgYWxsIGl0J3MgZmVuY2VzLg0KDQpXZSB3b3VsZCBqdXN0
IGhhdmUgdG8gYWRqdXN0IHRoZSBkb2N1bWVudGF0aW9uIGEgYml0Lg0KDQo+IFRoZSBsaW1pdGlu
ZyBmYWN0b3Igb2YgdGhpcyBhcHByb2FjaCBpcyB0aGF0IG5vdyBvdXIgb3BzLT5yZWxlYXNlKCkg
aXMNCj4gdW5kZXIgdGhlIHNhbWUgInByZXNzdXJlIiBhcyBkbWFfZmVuY2VfcHV0KCktPmRtYV9m
ZW5jZV9yZWxlYXNlKCkgYXJlLg0KPiBkbWFfZmVuY2VfcHV0KCkgYW5kIGRtYV9mZW5jZV9yZWxl
YXNlKCkgY2FuIGJlIGNhbGxlZCBmcm9tIGFueSBjb250ZXh0LA0KPiBhcyBmYXIgYXMgSSB1bmRl
cnN0YW5kLCBlLmcuIElSUSwgaG93ZXZlciBvdXIgbm9ybWFsIG9iamVjdCAtPnJlbGVhc2UNCj4g
Y2FuIHNjaGVkdWxlLCB3ZSBkbyB0aGluZ3MgbGlrZSBzeW5jaHJvbml6ZV9yY3UoKSBhbmQgc28g
b24uIE5vdGhpbmcgaXMNCj4gaW1wb3NzaWJsZSwganVzdCBzYXlpbmcgdGhhdCBldmVuIHRoaXMg
YXBwcm9hY2ggaXMgbm90IDEwMCUgcGVyZmVjdCBhbmQNCj4gbWF5IG5lZWQgYWRkaXRpb25hbCB3
b3JrYXJvdW5kcy4NCg0KV2VsbCBqdXN0IHVzZSBhIHdvcmsgaXRlbSBmb3IgcmVsZWFzZS4NCg0K
UmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPj4gSWYgeW91IGhhdmUgYSBzdGF0aWMgY29udGV4dCBz
dHJ1Y3R1cmUgbGlrZSBtb3N0IGRyaXZlcnMgaGF2ZSB0aGVuIHlvdSBtdXN0DQo+PiBtYWtlIHN1
cmUgdGhhdCBhbGwgZmVuY2VzIGF0IGxlYXN0IHNpZ25hbCBiZWZvcmUgeW91IHVubG9hZCB5b3Vy
IGRyaXZlci4gV2UNCj4+IHN0aWxsIHNvbWV3aGF0IGhhdmUgYSByYWNlIHdoZW4geW91IHRyeSB0
byB1bmxvYWQgYSBkcml2ZXIgYW5kIHRoZSBmZW5jZV9vcHMNCj4+IHN0cnVjdHVyZSBzdWRkZW5s
eSBkaXNhcHBlYXIsIGJ1dCB3ZSBjdXJyZW50bHkgbGl2ZSB3aXRoIHRoYXQuDQo+IEhtbSwgaW5k
ZWVkLi4uIEkgZGlkbid0IGNvbnNpZGVyIGZlbmNlX29wcyBjYXNlLg0KPg0KPj4gQXBhcnQgZnJv
bSB0aGF0IHlvdSBhcmUgcmlnaHQsIGZlbmNlcyBjYW4gbGl2ZSBmb3JldmVyIGFuZCB3ZSBuZWVk
IHRvIGRlYWwNCj4+IHdpdGggdGhhdC4NCj4gT0suIEkgc2VlLg0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
