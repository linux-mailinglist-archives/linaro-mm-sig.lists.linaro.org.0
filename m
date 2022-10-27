Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEA460F6EC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Oct 2022 14:14:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 31E7A3F59E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Oct 2022 12:14:33 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by lists.linaro.org (Postfix) with ESMTPS id 2B8F13F1D6
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Oct 2022 12:14:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=PZjRFX7h;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.48 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id bj12so3874879ejb.13
        for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Oct 2022 05:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ozR3pFF6qvev8k9P0jdmPJjlIVCpHvZvFTrYrZyvlug=;
        b=PZjRFX7hCJSMc+Y64bXTjS1Y0HjMKr7mBuRJEyhLjLFHCu86uE4HnLAuCExy6utvd1
         FOgBhXiiAJSLrrUG20YbdRvbVsNsZwCbTOPXaDHJFE88JKd+2iypeS1yDOEDzE57VkjJ
         UqWne/R3v2Wnj8Xa4C6S+5rj0k7XRgR9qoxXW4GzTzZDgcO+MzbvkuT1O61ovT/wJi+D
         Ha3tj9vLaD9yQYMZ/8SkAKkNiZ/YgGPwpKyMnOgfHSbBlgl4run+/9wq3qhNRVlg17Ki
         vDrwt6JEo/l/1NL27ZVsNuW2qV7SdZinurpZSn7BRkWNw1fV8rlE01TvkJBC9O4zTpDK
         1seg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ozR3pFF6qvev8k9P0jdmPJjlIVCpHvZvFTrYrZyvlug=;
        b=V8oXCg0d/tfRJj9APXFD1Y49Kvz60Hi3YlqC8ASOjfS46rjwqCXIcuyKNWKsvKgK/k
         hDQ7nPwJwcZLYITV3VQQrfX13+KAYSOtouz7GbQZyPosQWT2MGJEAqBMzhTb5m6rI45B
         Fb9h8OneMKlbPGUCwbT/G8LQsOdm8/9er2spbpP4IEJd7nCS/aWQCbJ0jTNhpe+JfJ8g
         dqOnN86OQVuKSjy0fJpuPiiXjG2FU9mQTiqiD+/7Cl+1sDd8GSc1jrjHNN+VYp8hx6sl
         V7jGYmis1S3v6WdGHKkUarBUvht6zG/5zJWkza27f9LF8eev7Ci/aWrw83KJmyDkso9R
         oP6A==
X-Gm-Message-State: ACrzQf0LBNnL1DYvOsZ2Kp38hpNV8qdKuzvs+rC9tubnhb5G1OgJcCLp
	RiGlsCl2uoyGV/+RRLRpspU=
X-Google-Smtp-Source: AMsMyM4Sne+rY2Ji3vF5c/d7Ew6GneR38fuCK0QW1XQVz5EfmwMiRau9oJnErgKoc5ml8Y39s8E8kA==
X-Received: by 2002:a17:907:1dda:b0:7a6:8ffc:7dc with SMTP id og26-20020a1709071dda00b007a68ffc07dcmr20109443ejc.163.1666872855035;
        Thu, 27 Oct 2022 05:14:15 -0700 (PDT)
Received: from [192.168.178.21] (p5b0ea229.dip0.t-ipconnect.de. [91.14.162.41])
        by smtp.gmail.com with ESMTPSA id bm27-20020a0564020b1b00b004615f7495e0sm917790edb.8.2022.10.27.05.14.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 05:14:14 -0700 (PDT)
Message-ID: <59ac9998-a838-abf8-124c-8fd98c4f0f7a@gmail.com>
Date: Thu, 27 Oct 2022 14:14:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
To: l.stach@pengutronix.de, nicolas@ndufresne.ca, ppaalanen@gmail.com,
 sumit.semwal@linaro.org, daniel@ffwll.ch, robdclark@gmail.com,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org
References: <20221020121316.3946-1-christian.koenig@amd.com>
In-Reply-To: <20221020121316.3946-1-christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ---
X-Rspamd-Queue-Id: 2B8F13F1D6
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.837];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_TO(0.00)[pengutronix.de,ndufresne.ca,gmail.com,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.48:from]
Message-ID-Hash: SELFA2D67GE72RGKP6D2NEAXQPKXBMGB
X-Message-ID-Hash: SELFA2D67GE72RGKP6D2NEAXQPKXBMGB
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SELFA2D67GE72RGKP6D2NEAXQPKXBMGB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjAuMTAuMjIgdW0gMTQ6MTMgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOg0KPiBIaSBndXlz
LA0KPg0KPiBhZnRlciBmaW5kaW5nIHRoYXQgd2UgZXNzZW50aWFsbHkgaGF2ZSB0d28gc2VwYXJh
dGUgd29ybGRzIGZvciBjb2hlcmVudCBzaGFyaW5nDQo+IG9mIGJ1ZmZlciB0aHJvdWdoIERNQS1i
dWYgSSB0aG91Z2h0IEkgd2lsbCB0YWNrbGUgdGhhdCBwcm9ibGVtIGEgYml0IGFuZCBhdA0KPiBs
ZWFzdCBhbGxvdyB0aGUgZnJhbWV3b3JrIHRvIHJlamVjdCBhdHRhY2htZW50cyB3aGljaCB3b24n
dCB3b3JrLg0KPg0KPiBTbyB0aG9zZSBwYXRjaGVzIGhlcmUgYWRkIGEgbmV3IGRtYV9jb2hlcmVu
dCBmbGFnIHRvIGVhY2ggRE1BLWJ1ZiBvYmplY3QNCj4gdGVsbGluZyB0aGUgZnJhbWV3b3JrIHRo
YXQgZGV2X2lzX2RtYV9jb2hlcmVudCgpIG5lZWRzIHRvIHJldHVybiB0cnVlIGZvciBhbg0KPiBp
bXBvcnRpbmcgZGV2aWNlIHRvIGJlIGFibGUgdG8gYXR0YWNoLiBTaW5jZSB3ZSBzaG91bGQgYWx3
YXlzIGhhdmUgYSBmYWxsYmFjaw0KPiBwYXRoIHRoaXMgc2hvdWxkIGdpdmUgdXNlcnNwYWNlIHRo
ZSBjaGFuY2UgdG8gc3RpbGwga2VlcCB0aGUgdXNlIGNhc2Ugd29ya2luZywNCj4gZWl0aGVyIGJ5
IGRvaW5nIGEgQ1BVIGNvcHkgaW5zdGVhZCBvciByZXZlcnNpbmcgdGhlIHJvbGVzIG9mIGV4cG9y
dGVyIGFuZA0KPiBpbXBvcnRlci4NCj4NCj4gRm9yIERSTSBhbmQgbW9zdCBWNEwyIGRldmljZXMg
SSB0aGVuIGZpbGwgaW4gdGhlIGRtYV9jb2hlcmVudCBmbGFnIGJhc2VkIG9uIHRoZQ0KPiByZXR1
cm4gdmFsdWUgb2YgZGV2X2lzX2RtYV9jb2hlcmVudCgpLiBFeHBvcnRpbmcgZHJpdmVycyBhcmUg
YWxsb3dlZCB0byBjbGVhcg0KPiB0aGUgZmxhZyBmb3IgdGhlaXIgYnVmZmVycyBpZiBzcGVjaWFs
IGhhbmRsaW5nIGxpa2UgdGhlIFVTV0MgZmxhZyBpbiBhbWRncHUgb3INCj4gdGhlIHVuY2FjaGVk
IGFsbG9jYXRpb25zIGZvciByYWRlb24vbm91dmVhdSBhcmUgaW4gdXNlLg0KPg0KPiBBZGRpdGlv
bmFsIHRvIHRoYXQgaW1wb3J0ZXJzIGNhbiBhbHNvIGNoZWNrIHRoZSBmbGFnIGlmIHRoZXkgaGF2
ZSBzb21lDQo+IG5vbi1zbm9vcGluZyBvcGVyYXRpb25zIGxpa2UgdGhlIHNwZWNpYWwgc2Nhbm91
dCBjYXNlIGZvciBhbWRncHUgZm9yIGV4YW1wbGUuDQo+DQo+IFRoZSBwYXRjaGVzIGFyZSBvbmx5
IHNtb2tlIHRlc3RlZCBhbmQgdGhlIHNvbHV0aW9uIGlzbid0IGlkZWFsLCBidXQgYXMgZmFyIGFz
DQo+IEkgY2FuIHNlZSBzaG91bGQgYXQgbGVhc3Qga2VlcCB0aGluZ3Mgd29ya2luZy4NCg0KR2Vu
dGxlIHBpbmcgb24gdGhpcy4gTHVjYXMsIERhbmllbCBhbmQgTmljb2xhcyB5b3UgaGF2ZSBiZWVu
IHJhdGhlciANCmFjdGl2ZSBpbiB0aGUgbGFzdCBkaXNjdXNzaW9uLiBEbyB5b3UgbWluZCB0YWtp
bmcgYSBsb29rPw0KDQpUaGFua3MsDQpDaHJpc3RpYW4uDQoNCj4NCj4gUGxlYXNlIHJldmlldyBh
bmQvb3IgY29tbWVudCwNCj4gQ2hyaXN0aWFuLg0KPg0KPg0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
