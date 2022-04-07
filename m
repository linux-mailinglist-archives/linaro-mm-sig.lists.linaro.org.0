Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B561050A660
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 18:58:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EEB67402BB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 16:58:45 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id C2BB53EA2C
	for <linaro-mm-sig@lists.linaro.org>; Thu,  7 Apr 2022 13:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649337414;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vbRblRxq/SE2km/rkmjkdSJvts57gYuZ3JZvtprFnTs=;
	b=Qw3jzlew7tFAL81/vg5FOhlN/M0lUaOTp9hhDaztIbixeYbNzoX2cPAsG7fkGBa4LJcOOm
	EBN4gNMS/qGaOjsXPcF9YsUEpGIMFCDC5D+B5m/lJ6XxRcwHnZkKOnPHXaIhxP6jJImRgp
	4UtPYqIhUShig+Ow0rfZ6Z9DC+zmfyE=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-593-gjNzh0uZMxiJIvUKzWuRtA-1; Thu, 07 Apr 2022 09:16:51 -0400
X-MC-Unique: gjNzh0uZMxiJIvUKzWuRtA-1
Received: by mail-wm1-f70.google.com with SMTP id c19-20020a05600c4a1300b0038e6b4a104cso4559711wmp.9
        for <linaro-mm-sig@lists.linaro.org>; Thu, 07 Apr 2022 06:16:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=vbRblRxq/SE2km/rkmjkdSJvts57gYuZ3JZvtprFnTs=;
        b=6AFNLpCSqFJgXZDx05OwApIi6uqe6IG+cb1Jks4qL0gzg6j5VUFqE5QJY1flLaxiey
         rnS5dHh4HdoLoz1JozaD/A7YWD2KrqA7y9lLjXrUSU28pEQLpn+JvQM1VJDd0lTI3wAq
         Lg6jBOfa/s48Ej8l6zr7DZ2/mYEKbctUIO2A5kF3DxcC1wY5svVpnW5dPzT2rmRSrx1f
         ufxw7gYO83kC7aG7i1x0DA1NlgaWQBHSlyq4BQf5GhfJzVLGrzUg+XZSoNW4vgXdMn/X
         WV9OHsKWrId+7vBasuDWlQKAN38LDzXA68dYTQNG7jMFfnZneKMa33b9SqeGBLLE14eY
         3G0g==
X-Gm-Message-State: AOAM532ofwmEJ3j9T4mzXVVmtsHw9pph6P8ZccmjaJdEr86mPOFXTjyy
	ZzRPhrCjjRx5qM1KCGaDrnZZOa7W3Cdhg5i0E/hBiyQM6J62tUN2TQxSBPmgVaemchoiljwCdNR
	UEaqEDLlUAhI/w/ry4eA+yAlA7SA=
X-Received: by 2002:a05:600c:590:b0:38c:804e:4197 with SMTP id o16-20020a05600c059000b0038c804e4197mr12313547wmd.22.1649337410263;
        Thu, 07 Apr 2022 06:16:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzqkG5lfR25b85G/v8443+CqBWY7ukzbb2XsMCNk9TeIagKJa+MIeW8P/wBh5/pVz1uMvC5wQ==
X-Received: by 2002:a05:600c:590:b0:38c:804e:4197 with SMTP id o16-20020a05600c059000b0038c804e4197mr12313529wmd.22.1649337410062;
        Thu, 07 Apr 2022 06:16:50 -0700 (PDT)
Received: from [192.168.1.102] ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id v5-20020adfe4c5000000b001edc1e5053esm16607003wrm.82.2022.04.07.06.16.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Apr 2022 06:16:49 -0700 (PDT)
Message-ID: <aa949d43-5c88-377c-9f93-1886f934bbca@redhat.com>
Date: Thu, 7 Apr 2022 15:16:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 daniel.vetter@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 intel-gfx@lists.freedesktop.org
References: <20220407085946.744568-1-christian.koenig@amd.com>
 <20220407085946.744568-3-christian.koenig@amd.com>
 <29677a4e-42dc-d35e-f487-f8b344678bee@redhat.com>
 <79648b84-e7d0-4c38-d8f1-cc569238ee7e@amd.com>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <79648b84-e7d0-4c38-d8f1-cc569238ee7e@amd.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RPMFGFHAYUFUJQEAQCOBQ7FLN34JARET
X-Message-ID-Hash: RPMFGFHAYUFUJQEAQCOBQ7FLN34JARET
X-Mailman-Approved-At: Thu, 21 Apr 2022 16:58:36 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/15] dma-buf: specify usage while adding fences to dma_resv obj v7
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RPMFGFHAYUFUJQEAQCOBQ7FLN34JARET/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNC83LzIyIDE1OjEzLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBBbSAwNy4wNC4yMiB1
bSAxNTowOCBzY2hyaWViIEphdmllciBNYXJ0aW5leiBDYW5pbGxhczoNCj4+IEhlbGxvIENocmlz
dGlhbiwNCj4+DQo+PiBPbiA0LzcvMjIgMTA6NTksIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+
Pj4gSW5zdGVhZCBvZiBkaXN0aW5ndGluZyBiZXR3ZWVuIHNoYXJlZCBhbmQgZXhjbHVzaXZlIGZl
bmNlcyBzcGVjaWZ5DQo+Pj4gdGhlIGZlbmNlIHVzYWdlIHdoaWxlIGFkZGluZyBmZW5jZXMuDQo+
Pj4NCj4+PiBSZXdvcmsgYWxsIGRyaXZlcnMgdG8gdXNlIHRoaXMgaW50ZXJmYWNlIGluc3RlYWQg
YW5kIGRlcHJlY2F0ZSB0aGUgb2xkIG9uZS4NCj4+Pg0KPj4gVGhpcyBwYXRjaCBicm9rZSBjb21w
aWxhdGlvbiBmb3IgdGhlIHZjNCBEUk0gZHJpdmVyLg0KPiANCj4gTXkgYXBvbG9naWVzIGZvciB0
aGF0LiBJJ3ZlIHRyaWVkIHJlYWxseSBoYXJkIHRvIGNhdGNoIGFsbCBjYXNlcywgYnV0IA0KPiBs
b29rcyBsaWtlIEkgbWlzc2VkIHNvbWUuDQo+IA0KDQpObyB3b3JyaWVzLCBJIGtub3cgdGhhdCdz
IG5vdCBlYXN5IHRvIGdldCBhbGwgY2FsbGVycyB3aGVuIGRvaW5nIHRoZXNlDQpzdWJzeXN0ZW0g
d2lkZSBjaGFuZ2VzLg0KDQo+PiBJJ3ZlIHRoaXMgcGF0Y2ggbG9jYWxseQ0KPj4gd2hpY2ggc2Vl
bXMgdG8gd29yayBidXQgSSBkb24ndCBrbm93IGVub3VnaCBhYm91dCB0aGUgZmVuY2UgQVBJIHRv
IGtub3cgaWYNCj4+IGlzIGNvcnJlY3QuDQo+Pg0KPj4gSWYgeW91IHRoaW5rIGlzIHRoZSBwcm9w
ZXIgZml4IHRoZW4gSSBjYW4gcG9zdCBpdCBhcyBhIHBhdGNoLg0KPiANCj4gWWVzLCB0aGF0IHBh
dGNoIGxvb2tzIGFic29sdXRlbHkgY29ycmVjdCB0byBtZS4NCj4NCg0KVGhhbmtzIGZvciBsb29r
aW5nIGF0IGl0Lg0KIA0KPiBGZWVsIGZyZWUgdG8gYWRkIGFuIFJldmlld2VkLWJ5OiBDaHJpc3Rp
YW4gS8O2bmlnIA0KPiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiBhbmQgQ0MgbWUgc28gdGhh
dCBJIGNhbiBwdXNoIGl0IHRvIA0KPiBkcm0tbWlzYy1uZXh0IEFTQVAuDQo+IA0KDQpJIGNhbiBh
bHNvIGRvIGl0IGFmdGVyIHBvc3RpbmcgKGp1c3QgdG8gZ2V0IGEgcHJvcGVyIExpbms6IHRhZyB3
aXRoIGRpbSkNCg0KQWxyZWFkeSBoYXZlIGFub3RoZXIgc2V0IHRoYXQgd2FudGVkIHRvIHB1c2gg
YnV0IGZvdW5kIHRoaXMgaXNzdWUgYWZ0ZXINCmRvaW5nIGEgYnVpbGQgdGVzdCBiZWZvcmUgcHVz
aGluZy4NCg0KPiBUaGFua3MsDQo+IENocmlzdGlhbi4NCj4gDQotLSANCkJlc3QgcmVnYXJkcywN
Cg0KSmF2aWVyIE1hcnRpbmV6IENhbmlsbGFzDQpMaW51eCBFbmdpbmVlcmluZw0KUmVkIEhhdA0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
