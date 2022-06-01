Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DF65E53A55F
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 14:45:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E6C133F04B
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 12:45:52 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by lists.linaro.org (Postfix) with ESMTPS id 47EB03EBC0
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jun 2022 12:45:48 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id jx22so3469485ejb.12
        for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Jun 2022 05:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=3gXXAFCIgEtF+YzTyCewnTjN33A3GV3iuvrjUd27wQQ=;
        b=gta6eDw43Uu7sglXZL/Vx2eKNZv/oPKGubWeykfGXP6+d5MRPMny64oKmMnBVj1ov2
         WBL+iirMwlra8edJZnYxIOoIQ+8fT9uqyc0vdTXiddtI5+dqrGKxPTEgZzRaq7luDAgW
         Xbes5Fr0LjMEQOnXST9oMj7xnFY4gwNGyBwYzLwh3XRe3rysTNoaTaIJkSEtAtcG52IY
         j7zMyk3iHiwwhxX7XXJeotHqR/xNBwJwhjlLqqwdHbJMW0Q6Ah3hCeYIQXfzX5inb5tu
         NWNJLs72EwPyi5ZAzHA+k5531RYCDHMCs7XtmvxEfrpgZgFOXJFeJv1Uj0wa5qdZEjAh
         wRxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3gXXAFCIgEtF+YzTyCewnTjN33A3GV3iuvrjUd27wQQ=;
        b=ouALUOeGCVtamV2aZ8x5rhz2qO5dxV97trgfZHefN8nKtbKjnzf/9HQHVqSwfyyPzE
         SWEwfNldFRP0DaEvxIbxzuDRn1rSq/k+IC7OcoYuDHtr+IH0rqzvnWI4qrlIRY/Anlkn
         UMpltL1MRwJI7SYYwrtLdJ14qgic31xK0AOczY9+oU+/VgrSVBoUDpUobLl+g3kbO4ly
         9OJRnX2Nfod3NtyiaYGWF9WrFBH0lsxDe9QAcv9e6CkJ32DFAviMSkuTLUV17pGSqNy3
         7RV/InkS0na4V7gQl0dp2x8UNbER4vXH9PaUrEpZf5P1BGl9gcSfx9vequBBs9UNyVGS
         GMpA==
X-Gm-Message-State: AOAM533Ev0fEeRUhXHPbZqsRb3I0WVbO8JwnLyV+pS/leZ8N0E02DoPx
	2jEwB+NvoNmu56hinDxJ1s0=
X-Google-Smtp-Source: ABdhPJw2hNXssU1Die826uY3QfwCGMNWy9eIR9jcXgxN1q7weKBiW4r00uIvzYLOojrC71wHndfrzQ==
X-Received: by 2002:a17:906:2416:b0:6fe:a0be:91d5 with SMTP id z22-20020a170906241600b006fea0be91d5mr54759460eja.132.1654087544558;
        Wed, 01 Jun 2022 05:45:44 -0700 (PDT)
Received: from [192.168.178.21] (p5b0ea02f.dip0.t-ipconnect.de. [91.14.160.47])
        by smtp.gmail.com with ESMTPSA id gk2-20020a17090790c200b006febce7081esm677798ejb.177.2022.06.01.05.45.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 05:45:43 -0700 (PDT)
Message-ID: <33aba213-b6ad-4a15-9272-c62f5dfb1fb7@gmail.com>
Date: Wed, 1 Jun 2022 14:45:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Sergey Senozhatsky <senozhatsky@chromium.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20220530142232.2871634-1-senozhatsky@chromium.org>
 <7eee4274-bd69-df8d-9067-771366217804@amd.com> <YpWCvniLzJfcp684@google.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <YpWCvniLzJfcp684@google.com>
Message-ID-Hash: YTGLHTW272L7FJAC37GID7KJDVCUOKQL
X-Message-ID-Hash: YTGLHTW272L7FJAC37GID7KJDVCUOKQL
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Tomasz Figa <tfiga@chromium.org>, Ricardo Ribalda <ribalda@chromium.org>, Christoph Hellwig <hch@infradead.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: allow dma fence to have their own lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YTGLHTW272L7FJAC37GID7KJDVCUOKQL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMzEuMDUuMjIgdW0gMDQ6NTEgc2NocmllYiBTZXJnZXkgU2Vub3poYXRza3k6DQo+IE9uICgy
Mi8wNS8zMCAxNjo1NSksIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBBbSAzMC4wNS4yMiB1
bSAxNjoyMiBzY2hyaWViIFNlcmdleSBTZW5vemhhdHNreToNCj4+PiBbU05JUF0NCj4+PiBTbyB0
aGUgYGxvY2tgIHNob3VsZCBoYXZlIGF0IGxlYXN0IHNhbWUgbGlmZXNwYW4gYXMgdGhlIERNQSBm
ZW5jZQ0KPj4+IHRoYXQgYm9ycm93cyBpdCwgd2hpY2ggaXMgaW1wb3NzaWJsZSB0byBndWFyYW50
ZWUgaW4gb3VyIGNhc2UuDQo+PiBOb3BlLCB0aGF0J3Mgbm90IGNvcnJlY3QuIFRoZSBsb2NrIHNo
b3VsZCBoYXZlIGF0IGxlYXN0IHNhbWUgbGlmZXNwYW4gYXMgdGhlDQo+PiBjb250ZXh0IG9mIHRo
ZSBETUEgZmVuY2UuDQo+IEhvdyBkb2VzIG9uZSBrbm93IHdoZW4gaXQncyBzYWZlIHRvIHJlbGVh
c2UgdGhlIGNvbnRleHQ/IERNQSBmZW5jZQ0KPiBvYmplY3RzIGFyZSBzdGlsbCB0cmFuc3BhcmVu
dGx5IHJlZmNvdW50LWVkIGFuZCAibGl2ZSB0aGVpciBvd24gbGl2ZXMiLA0KPiBob3cgZG9lcyBv
bmUgc3luY2hyb25pemUgbGlmZXNwYW5zPw0KDQpXZWxsLCB5b3UgZG9uJ3QuDQoNCklmIHlvdSBo
YXZlIGEgZHluYW1pYyBjb250ZXh0IHN0cnVjdHVyZSB5b3UgbmVlZCB0byByZWZlcmVuY2UgY291
bnQgdGhhdCANCmFzIHdlbGwuIEluIG90aGVyIHdvcmRzIGV2ZXJ5IHRpbWUgeW91IGNyZWF0ZSBh
IGZlbmNlIGluIHlvdXIgY29udGV4dCANCnlvdSBuZWVkIHRvIGluY3JlbWVudCB0aGUgcmVmZXJl
bmNlIGNvdW50IGFuZCBldmVyeSB0aW1lIGEgZmVuY2UgaXMgDQpyZWxlYXNlIHlvdSBkZWNyZW1l
bnQgaXQuDQoNCklmIHlvdSBoYXZlIGEgc3RhdGljIGNvbnRleHQgc3RydWN0dXJlIGxpa2UgbW9z
dCBkcml2ZXJzIGhhdmUgdGhlbiB5b3UgDQptdXN0IG1ha2Ugc3VyZSB0aGF0IGFsbCBmZW5jZXMg
YXQgbGVhc3Qgc2lnbmFsIGJlZm9yZSB5b3UgdW5sb2FkIHlvdXIgDQpkcml2ZXIuIFdlIHN0aWxs
IHNvbWV3aGF0IGhhdmUgYSByYWNlIHdoZW4geW91IHRyeSB0byB1bmxvYWQgYSBkcml2ZXIgDQph
bmQgdGhlIGZlbmNlX29wcyBzdHJ1Y3R1cmUgc3VkZGVubHkgZGlzYXBwZWFyLCBidXQgd2UgY3Vy
cmVudGx5IGxpdmUgDQp3aXRoIHRoYXQuDQoNCkFwYXJ0IGZyb20gdGhhdCB5b3UgYXJlIHJpZ2h0
LCBmZW5jZXMgY2FuIGxpdmUgZm9yZXZlciBhbmQgd2UgbmVlZCB0byANCmRlYWwgd2l0aCB0aGF0
Lg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQo+IExpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZw0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
