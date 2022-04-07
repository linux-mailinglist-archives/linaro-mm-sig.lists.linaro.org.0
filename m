Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B63450A663
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 18:58:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 71630402BB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 16:58:55 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 4220D3EA5C
	for <linaro-mm-sig@lists.linaro.org>; Thu,  7 Apr 2022 13:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649338209;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=oFOEsWzoiUS9y0uNWiK+Uj/FvgEiEbzhwqlHCzAenJo=;
	b=e5rdN5XDH3+axy0cwUw5QujMoUCRVzK2ISqIvCrQh4r37477hIV0DDgTK5HIgvv6nnR7dX
	Vx8wXn3exuBHDci9q+OBQYTi0LnTSp1LsyoCySRaEUS99IugixKfyc/kx+ofzQe97/l9I4
	9eho8zEHXlN0f/v7JHoxG0tx+PBDPis=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-523-OsB_oenAP-qc-0JdUc6-Gw-1; Thu, 07 Apr 2022 09:30:08 -0400
X-MC-Unique: OsB_oenAP-qc-0JdUc6-Gw-1
Received: by mail-wm1-f71.google.com with SMTP id r6-20020a05600c35c600b0038e6db5da9cso1494119wmq.9
        for <linaro-mm-sig@lists.linaro.org>; Thu, 07 Apr 2022 06:30:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=oFOEsWzoiUS9y0uNWiK+Uj/FvgEiEbzhwqlHCzAenJo=;
        b=wohqxPDEWMYChZbw+RCcWdLKpCgafxRtSe5MHMbVrTUC0rDmHe/ZgsR1w3mHc+k0cR
         vAE2v0exWAgGaTgmDcn0l8d7M0WC4Jd/LXkNI6ClZ4gH4xnoaF6UX62gFBIzkLJHTqEY
         zW4f6x+45Eix1kjTHCC9oCYCUudVVXGMEqBSE8hxioRvoJ1psom1XAgezQC05YbbnwJ/
         Rcu00v/rHF479EvjHKsNbjx1prAQoEG4GGYmTYXz+UEZcVH8j0AsSmKB8RmQW0BxHbXx
         vnXCkZ1PXDxtbQmNdMzEBMpASO1BhKNDXftPtUnzlBBC2WZnZawIRT1sQbGoDfB6Pv2L
         ur/A==
X-Gm-Message-State: AOAM533ooeQ4gWRp4E4eHtAQHaeQspXREGjao49l+KUdkonUqZtNDkRK
	+mxgLA+Z5p5bD6BSfF/l8FMALQKk7HKF5SE5N2HlHEKEVeDHEUWvAOnSXli/9n1rQH9ckayOW/n
	uOZh+bkT3HAr4mCHwRRy/Sht1VnU=
X-Received: by 2002:a5d:5987:0:b0:204:1f21:6a29 with SMTP id n7-20020a5d5987000000b002041f216a29mr11125681wri.716.1649338206614;
        Thu, 07 Apr 2022 06:30:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwHhyt6TJv9cnYh3O+w2+P8EerBGfzJnZrRoxkX8R2UxyrNxuqiqRa2rKZwAlKyV73pUqeKBQ==
X-Received: by 2002:a5d:5987:0:b0:204:1f21:6a29 with SMTP id n7-20020a5d5987000000b002041f216a29mr11125665wri.716.1649338206429;
        Thu, 07 Apr 2022 06:30:06 -0700 (PDT)
Received: from [192.168.1.102] ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id l2-20020a5d5602000000b00206120e0b0fsm14766168wrv.18.2022.04.07.06.30.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Apr 2022 06:30:06 -0700 (PDT)
Message-ID: <a6e442f1-cb22-e196-1546-67e0c9b1a921@redhat.com>
Date: Thu, 7 Apr 2022 15:30:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
To: linux-kernel@vger.kernel.org
References: <20220407131950.915091-1-javierm@redhat.com>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220407131950.915091-1-javierm@redhat.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YIY72UKTAB5MECTRUR4Q6UVACRHBI45C
X-Message-ID-Hash: YIY72UKTAB5MECTRUR4Q6UVACRHBI45C
X-Mailman-Approved-At: Thu, 21 Apr 2022 16:58:42 +0000
CC: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, Emma Anholt <emma@anholt.net>, Maxime Ripard <mripard@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/vc4: Use newer fence API properly to fix build errors
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YIY72UKTAB5MECTRUR4Q6UVACRHBI45C/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNC83LzIyIDE1OjE5LCBKYXZpZXIgTWFydGluZXogQ2FuaWxsYXMgd3JvdGU6DQo+IFRoZSBj
b21taXQgNzM1MTFlZGY4YjE5ICgiZG1hLWJ1Zjogc3BlY2lmeSB1c2FnZSB3aGlsZSBhZGRpbmcg
ZmVuY2VzIHRvDQo+IGRtYV9yZXN2IG9iaiB2NyIpIHBvcnRlZCBhbGwgdGhlIERSTSBkcml2ZXJz
IHRvIHVzZSB0aGUgbmV3ZXIgZmVuY2UgQVBJDQo+IHRoYXQgc3BlY2lmaWVzIHRoZSB1c2FnZSB3
aXRoIHRoZSBlbnVtIGRtYV9yZXN2X3VzYWdlIHJhdGhlciB0aGFuIGRvaW5nDQo+IGFuIGV4cGxp
Y2l0IHNoYXJlZCAvIGV4Y2x1c2l2ZSBkaXN0aW5jdGlvbi4NCj4gDQo+IEJ1dCB0aGUgY29tbWl0
IGRpZG4ndCBkbyBpdCBwcm9wZXJseSBpbiB0d28gY2FsbGVycyBvZiB0aGUgdmM0IGRyaXZlciwN
Cj4gbGVhZGluZyB0byBidWlsZCBlcnJvcnMuDQo+IA0KPiBGaXhlczogNzM1MTFlZGY4YjE5ICgi
ZG1hLWJ1Zjogc3BlY2lmeSB1c2FnZSB3aGlsZSBhZGRpbmcgZmVuY2VzIHRvIGRtYV9yZXN2IG9i
aiB2NyIpDQo+IFNpZ25lZC1vZmYtYnk6IEphdmllciBNYXJ0aW5leiBDYW5pbGxhcyA8amF2aWVy
bUByZWRoYXQuY29tPg0KPiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPg0KPiAtLS0NClB1c2hlZCB0byBkcm0tbWlzYyAoZHJtLW1pc2MtbmV4
dCkgc2luY2UgdGhpcyBmaXhlcyBhIGJ1aWxkIGVycm9yIGFuZA0KQ2hyaXN0aWFuIGFscmVhZHkg
cmV2aWV3ZWQgaXQuDQoNCi0tIA0KQmVzdCByZWdhcmRzLA0KDQpKYXZpZXIgTWFydGluZXogQ2Fu
aWxsYXMNCkxpbnV4IEVuZ2luZWVyaW5nDQpSZWQgSGF0DQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
