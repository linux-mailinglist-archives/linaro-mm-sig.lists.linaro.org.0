Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B815A53A629
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 15:50:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A1E8E3F0CC
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 13:50:30 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by lists.linaro.org (Postfix) with ESMTPS id 17BAE3ED51
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jun 2022 13:50:26 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id 129-20020a1c0287000000b003974edd7c56so3083413wmc.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Jun 2022 06:50:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=8js3BmhqDmlsACbALLq5e90PLEF4lborosfHSvoWOKM=;
        b=YTm8+7dPHONlBsZR4SMEitCaBrfkbRXNUYC3ZuJKHQrTTGF4FMpWDkHvPvAUKxe/7W
         vdWoMgFNonHPdtNFLs8dJ0eKIrl3TVQfXZJ1W0tL8u1KraHZ3D4SYSONkggVAD+CYTXc
         vmgHav8NPKJ04dRy1E1KYZ6JMM3uN6Mbr1xauaHZ7Yu5PzCs6IOS9W3k8KXkoAtGZ+Kj
         3WTmHnwAlXIAlgL8PwWAtd6lN4A7aT+ryvS5oVzEY7RSSG+IjEpqmsMSZk4Zg8mHPLnn
         iayVlAoBzt92WTZsmg6sguCvUgZ2C7pPg2hJF3Jn/ExC9EtV0aaEwYCXejT3Wp+8zJqK
         u0SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8js3BmhqDmlsACbALLq5e90PLEF4lborosfHSvoWOKM=;
        b=0aCTg4us6nt3CU9DM83E+PSrXhuacasFLDXAuAR2zHKJUoGGvQw+U0ZUmZJ3ViS1tI
         QjdIMcOOzmKANkgTvS2RDHHKQd36A3BSB8D5spigdo6D2U+SR6xr1vZy4Q/Bw9m5o4uz
         IIhRUrpzyXkM9w4CGhST3I0gZvk+Lsrb1JI9OJw9VLHrNkKPWj/RcMRJhcul2tU+FoPl
         AyBzxv80ESEvTIqZUBSQVPzFKx8CJVXwQ+sJXLYK/jgN1rfR/o1FJRlJnmL1Rx9deuEk
         pzF0xplhgJpbfidSLRt2IdGkg77WkWi45krGCN0u4rbwEc4rMmY1heT2WZsHaXE+sV8q
         hF6w==
X-Gm-Message-State: AOAM531xCBo7HXejXonp8qORYTgtdMDbgSGgtUPTQzuzi01F9G39Yf39
	dNZ8QK7BXNHoOWP20NXZZXI=
X-Google-Smtp-Source: ABdhPJwrKHJfq73KfKlhy8VE3p9Xdk0H07fsnJbZrGsy5keEhwCnMaJoppLUFggoAw0VxEGq5FlEhQ==
X-Received: by 2002:a7b:c1d9:0:b0:397:335d:4d9f with SMTP id a25-20020a7bc1d9000000b00397335d4d9fmr29006967wmj.55.1654091425051;
        Wed, 01 Jun 2022 06:50:25 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:d1fb:e1e4:e193:e55f? ([2a02:908:1256:79a0:d1fb:e1e4:e193:e55f])
        by smtp.gmail.com with ESMTPSA id n13-20020a5d400d000000b0020ff7246934sm1664650wrp.95.2022.06.01.06.50.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 06:50:24 -0700 (PDT)
Message-ID: <87724f19-7976-3a2c-96bc-8652a1cec9e8@gmail.com>
Date: Wed, 1 Jun 2022 15:50:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Sergey Senozhatsky <senozhatsky@chromium.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20220530142232.2871634-1-senozhatsky@chromium.org>
 <7eee4274-bd69-df8d-9067-771366217804@amd.com> <YpTmhixkV7+yh6wo@google.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <YpTmhixkV7+yh6wo@google.com>
Message-ID-Hash: Q7EIVPLU6VJ4O36P6H5ZRKKHLHXGEVLM
X-Message-ID-Hash: Q7EIVPLU6VJ4O36P6H5ZRKKHLHXGEVLM
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Tomasz Figa <tfiga@chromium.org>, Ricardo Ribalda <ribalda@chromium.org>, Christoph Hellwig <hch@infradead.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: allow dma fence to have their own lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Q7EIVPLU6VJ4O36P6H5ZRKKHLHXGEVLM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQoNCkFtIDMwLjA1LjIyIHVtIDE3OjQ1IHNjaHJpZWIgU2VyZ2V5IFNlbm96aGF0c2t5Og0KPiBP
biAoMjIvMDUvMzAgMTY6NTUpLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gSWYgeW91IGp1
c3Qgd2FudCB0byBjcmVhdGUgYSBzaW5nbGUgZG1hX2ZlbmNlIHdoaWNoIGlzIGFsc28gb25seSBi
b3VuZCB0byBhDQo+PiBzaW5nbGUgY29udGV4dCB5b3UgY2FuIGVtYmVkIHRoZSBsb2NrIGludG8g
dGhlIGZlbmNlIHdpdGhvdXQgbXVjaCBwcm9ibGVtLg0KPj4NCj4+IFNlZSBob3cgdGhlIGRtYV9m
ZW5jZV9hcnJheSBkb2VzIHRoYXQgZm9yIGV4YW1wbGU6IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4u
Y29tL2xpbnV4L2xhdGVzdC9zb3VyY2UvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtYXJyYXkuaCNM
MzcNCj4gQ2hyaXN0aWFuLCBJJ20gbm90IHN1cmUgSSdtIGZvbGxvd2luZyB5b3Ugb24gdGhlICJl
bWJlZCB0aGUgbG9jayBpbnRvIHRoZQ0KPiBmZW5jZSB3aXRob3V0IG11Y2ggcHJvYmxlbSIgcGFy
dC4gSWYgSSB1bmRlcnN0YW5kIGl0IGNvcnJlY3RseSB0aGlzIHNob3VsZA0KPiBiZSBzb21ldGhp
bmcgbGlrZToNCj4NCj4gCWZlbmNlcyA9IGttYWxsb2NfYXJyYXkoMSwgc2l6ZW9mKCpmZW5jZXMp
LCBHRlBfS0VSTkVMKTsNCj4gCWZvcl9lYWNoX2ZlbmNlKC4uLikgew0KPg0KPiAJCS8vIHdoYXQg
c3BpbmxvY2sgc2hvdWxkIEkgdXNlIGhlcmU/DQo+DQo+IAkJZG1hX2ZlbmNlX2luaXQoJmZlbmNl
c1tpXSwgLi4gJmxvY2sgLi4pOw0KPiAJCWRtYV9mZW5jZV9nZXQoJmZlbmNlc1tpXSk7DQo+IAl9
DQo+IAlmZW5jZV9hcnJheSA9IGRtYV9mZW5jZV9hcnJheV9jcmVhdGUoMSwgZmVuY2VzLCAuLi4u
KTsNCj4gCXN5bmNfZmlsZV9jcmVhdGUoJmZlbmNlX2FycmF5LT5iYXNlKTsNCg0KV2VsbCBubywg
dGhhdCdzIHRoZSBoaWdoIGxldmVsIHVzYWdlIG9mIHRoZSBkbWFfZmVuY2VfYXJyYXkuDQoNCldo
YXQgSSBtZWFudCB3YXMgdGhpcyBoZXJlOg0KDQpzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5IHsNCiDC
oMKgIMKgc3RydWN0IGRtYV9mZW5jZSBiYXNlOw0KDQogwqDCoCDCoHNwaW5sb2NrX3QgbG9jazsN
Ci4uLg0KfTsNCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCj4gVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcNCg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
