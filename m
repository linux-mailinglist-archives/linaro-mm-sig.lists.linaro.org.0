Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F732B7BE8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Nov 2020 11:58:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0CD73604A8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Nov 2020 10:58:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0195F61877; Wed, 18 Nov 2020 10:58:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A279360F1F;
	Wed, 18 Nov 2020 10:57:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C7624604A8
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Nov 2020 10:57:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B560760F1F; Wed, 18 Nov 2020 10:57:48 +0000 (UTC)
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by lists.linaro.org (Postfix) with ESMTPS id C984A604A8
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Nov 2020 10:57:47 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id gj5so2109367ejb.8
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Nov 2020 02:57:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=Ujs+84h/AV5va5lsnNUE6Cha4z0WdYf4Awwp5uvYq2s=;
 b=AeSpNQI47TRLMXmP1z5hAetXHzt/+MW4MwETgWUxgBmL7yj6og7a8h/E6by0vE1FQ1
 EA8bQut5XCE2S9obdB2mx2BZ1dtSz6OvidOJq+wnKG1FXaXN/5CyUTSkyKdE2iwldKka
 b3vyOirHlEmkBuDixqVCB64qCKeWJ3GYeARtMCeuWc0/QdLAFn0OZ45LGtPfN0q7e4NJ
 kEV+7TABRXNhG2wpfzfWoELt7yhiQZi8/quJM3JXuhQlQn3kJwJKXhr5ZuhYPIWfB5Pc
 WvF3B1aol0TotrvlqhOGkfUiiopRF3Ol/6/THnoj62I9bowzITrFfRxlj5H2/g065vcw
 i+yA==
X-Gm-Message-State: AOAM533ai5RGd0jG2858dML1CQ6f+QQpw3Bze5ngB1iQhyp67TXDt4TB
 BN6mv7LpkLIVYZket67ZjRk=
X-Google-Smtp-Source: ABdhPJzwcar3mNBUaai8RXeIr42FsqX4abG+v5tYsTGBLf/nO0azD5aQGORqzDbjWMSqF0AU+Vgykw==
X-Received: by 2002:a17:906:2e0f:: with SMTP id
 n15mr6409546eji.486.1605697066669; 
 Wed, 18 Nov 2020 02:57:46 -0800 (PST)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id n12sm12761784ejs.19.2020.11.18.02.57.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Nov 2020 02:57:46 -0800 (PST)
To: Andrew Morton <akpm@linux-foundation.org>
References: <20201106114806.46015-1-christian.koenig@amd.com>
 <20201106114806.46015-2-christian.koenig@amd.com>
 <20201106144811.cf228ca9278ec78887d42960@linux-foundation.org>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <e5a25173-ebea-d856-ed25-45437769f17f@gmail.com>
Date: Wed, 18 Nov 2020 11:57:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201106144811.cf228ca9278ec78887d42960@linux-foundation.org>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] mm: mmap: fix fput in error path v2
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
Reply-To: christian.koenig@amd.com
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMDYuMTEuMjAgdW0gMjM6NDggc2NocmllYiBBbmRyZXcgTW9ydG9uOgo+IE9uIEZyaSwgIDYg
Tm92IDIwMjAgMTI6NDg6MDUgKzAxMDAgIkNocmlzdGlhbiBLw7ZuaWciIDxja29lbmlnLmxlaWNo
dHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPj4gUGF0Y2ggIjQ5NWMxMGNjMWMwYyBDSFJP
TUlVTTogZG1hLWJ1ZjogcmVzdG9yZSBhcmdzLi4uIgo+PiBhZGRzIGEgd29ya2Fyb3VuZCBmb3Ig
YSBidWcgaW4gbW1hcF9yZWdpb24uCj4+Cj4+IEFzIHRoZSBjb21tZW50IHN0YXRlcyAtPm1tYXAo
KSBjYWxsYmFjayBjYW4gY2hhbmdlCj4+IHZtYS0+dm1fZmlsZSBhbmQgc28gd2UgbWlnaHQgY2Fs
bCBmcHV0KCkgb24gdGhlIHdyb25nIGZpbGUuCj4+Cj4+IFJldmVydCB0aGUgd29ya2Fyb3VuZCBh
bmQgcHJvcGVyIGZpeCB0aGlzIGluIG1tYXBfcmVnaW9uLgo+Pgo+IFNlZW1zIGNvcnJlY3QsIGJl
c3QgSSBjYW4gdGVsbC4gIFByZXN1bWFibHkgYWxsIC0+bW1hcCgpIGluc3RhbmNlcyB3aWxsCj4g
Y29ycmVjdGx5IGZwdXQoKSB0byBvcmlnaW5hbCBmaWxlKiBpZiB0aGV5J3JlIHJld3JpdGluZyB2
bWEtPnZtX2ZpbGUuCgpZZXMsIGV4YWN0bHkuCgpQYXRjaCAjMiBwcm92aWRlcyBhIGhlbHBlciB0
byBtYWtlIHN1cmUgdGhhdCBldmVyeWJvZHkgZ2V0cyB0aGUgCmdldF9maWxlKCkvZnB1dCgpIGNv
cnJlY3RseSB3aGlsZSB1cGRhdGluZyB2bWEtPnZtX2ZpbGUuCgpDYW4gSSBhZGQgeW91ciBhY2tl
ZC1ieSB0byB0aGUgcGF0Y2hlcyBhbmQgcHVzaCB0aGVtIHVwc3RyZWFtIHRocm91Z2ggCmRybS1t
aXNjLW5leHQ/CgpUaGFua3MsCkNocmlzdGlhbi4KCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
