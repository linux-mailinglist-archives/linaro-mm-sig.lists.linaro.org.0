Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 480D0169881
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 23 Feb 2020 16:45:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7C427607BB
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 23 Feb 2020 15:45:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6F79F606A4; Sun, 23 Feb 2020 15:45:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C3CC360749;
	Sun, 23 Feb 2020 15:45:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1C413606A4
 for <linaro-mm-sig@lists.linaro.org>; Sun, 23 Feb 2020 15:45:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 105B660749; Sun, 23 Feb 2020 15:45:19 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id ABE6B606A4
 for <linaro-mm-sig@lists.linaro.org>; Sun, 23 Feb 2020 15:45:17 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id p9so6577417wmc.2
 for <linaro-mm-sig@lists.linaro.org>; Sun, 23 Feb 2020 07:45:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=inzn9KgooBAx5M8NGIgtozNP6e9nFtoEVn58fHfHS9U=;
 b=LoPEZmZ0iwl5CnDPQfxsLa3UAwkMuPXeOFOv4BTdRxM9OhJbTuMux5BYR9S/ECp8xX
 cYM8hccTyfMBQy8nhRr7LrWiPg8nHXA4HS9FAlqdX2FbSuc4TZCYNS5Or0RjaTyVW8Jh
 XjqNWMe6SW7GyGFR2p+F2VzqtvcNErH42QKinPJi9baHyyFKdu8XAxKsyEHyytZcjhT3
 GaEq9CpKMOBDY0Pm3yNPbgrmOgMnbNVthxJkW6tFxKeBe6hBnShqbky+CVX/X0ObsKLQ
 qUJghEsKe4Ol5Q5R4Y0bMiGjlA638unJYowXNqq2HCdtc6KdemvntqDDdTFfpGbHmoBD
 rhdA==
X-Gm-Message-State: APjAAAXqHT7yya/DkBeIMDVYLGSqadnl+CL+Ntuty2Tb+3qMDQ7BgEoh
 bi90MqWYrHHprI48XcxNWs7pZLyc
X-Google-Smtp-Source: APXvYqxhJh1O9a4M4aCqcycel5moNklWx8r/xJq6nuMHEP0zx83oOzF3CBVTxvvIT9/L5THTkiHlGw==
X-Received: by 2002:a7b:c14e:: with SMTP id z14mr16451275wmi.58.1582472716864; 
 Sun, 23 Feb 2020 07:45:16 -0800 (PST)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id w7sm13097479wmi.9.2020.02.23.07.45.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 23 Feb 2020 07:45:16 -0800 (PST)
To: Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28VMware=29?= <thomas_os@shipmail.org>
References: <20200217154509.2265-6-christian.koenig@amd.com>
 <20200217175518.GL2363188@phenom.ffwll.local>
 <f8ac7cbc-7c90-7119-735c-9f55adb6fa7f@shipmail.org>
 <CAKMK7uHG3EkEPbAQ3UEHHLcfmR+0NPq0wZuBX+s2-WCFdso8ew@mail.gmail.com>
 <79a0d79f-91bd-2481-740c-20e6c819c7c9@shipmail.org>
 <ee929c93-c9d7-7243-810e-94c6f0fc64b0@shipmail.org>
 <20200220180459.GS2363188@phenom.ffwll.local>
 <d1c37ec4-b63e-437a-a2be-80ba5192e048@shipmail.org>
 <20200220200831.GA2363188@phenom.ffwll.local>
 <501bf409-e4fe-a318-17b4-d5d050b09529@shipmail.org>
 <20200221171217.GD2363188@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <d9343617-9da8-5fea-a0f1-99db34a0cf2c@gmail.com>
Date: Sun, 23 Feb 2020 16:45:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200221171217.GD2363188@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 5/5] drm/amdgpu: implement
	amdgpu_gem_prime_move_notify v2
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

QW0gMjEuMDIuMjAgdW0gMTg6MTIgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IFtTTklQXQo+IFll
YWggdGhlIEdyZWF0IFBsYW4gKHRtKSBpcyB0byBmdWxseSByZWx5IG9uIHd3X211dGV4IHNsb3ds
eSBkZWdlbmVyYXRpbmcKPiBpbnRvIGVzc2VudGlhbGx5IGEgZ2xvYmFsIGxvY2suIEJ1dCBvbmx5
IHdoZW4gdGhlcmUncyBhY3R1YWwgY29udGVudGlvbgo+IGFuZCB0aHJhc2hpbmcuCgpZZXMgZXhh
Y3RseS4gQSByZWFsbHkgYmlnIHByb2JsZW0gaW4gVFRNIGlzIGN1cnJlbnRseSB0aGF0IHdlIGRy
b3AgdGhlIApsb2NrIGFmdGVyIGV2aWN0aW5nIEJPcyBiZWNhdXNlIHRoZXkgdGVuZCB0byBtb3Zl
IGluIGFnYWluIGRpcmVjdGx5IAphZnRlciB0aGF0LgoKIEZyb20gcHJhY3RpY2UgSSBjYW4gYWxz
byBjb25maXJtIHRoYXQgdGhlcmUgaXMgZXhhY3RseSB6ZXJvIGJlbmVmaXQgCmZyb20gZHJvcHBp
bmcgbG9ja3MgZWFybHkgYW5kIHJlYWNxdWlyZSB0aGVtIGZvciBleGFtcGxlIGZvciB0aGUgVk0g
cGFnZSAKdGFibGVzLiBUaGF0J3MganVzdCBtYWtlcyBpdCBtb3JlIGxpa2VseSB0aGF0IHNvbWVi
b2R5IG5lZWRzIHRvIHJvbGwgCmJhY2sgYW5kIHRoaXMgaXMgd2hhdCB3ZSBuZWVkIHRvIGF2b2lk
IGluIHRoZSBmaXJzdCBwbGFjZS4KCkNvbnRlbnRpb24gb24gQk8gbG9ja3MgZHVyaW5nIGNvbW1h
bmQgc3VibWlzc2lvbiBpcyBwZXJmZWN0bHkgZmluZSBhcyAKbG9uZyBhcyB0aGlzIGlzIGFzIGxp
Z2h0d2VpZ2h0IGFzIHBvc3NpYmxlIHdoaWxlIHdlIGRvbid0IGhhdmUgdHJhc2hpbmcuIApXaGVu
IHdlIGhhdmUgdHJhc2hpbmcgbXVsdGkgc3VibWlzc2lvbiBwZXJmb3JtYW5jZSBpcyBiZXN0IGFy
Y2hpdmVkIHRvIApqdXN0IGZhdm9yIGEgc2luZ2xlIHByb2Nlc3MgdG8gZmluaXNoIGl0cyBidXNp
bmVzcyBhbmQgYmxvY2sgZXZlcnlib2R5IGVsc2UuCgpCZWNhdXNlIG9mIHRoaXMgSSB3b3VsZCBh
Y3R1YWxseSB2b3RlIGZvciBmb3JiaWRkaW5nIHRvIHJlbGVhc2UgCmluZGl2aWR1YWwgd3dfbXV0
ZXgoKSBsb2NrcyBpbiBhIGNvbnRleHQuCgpSZWdhcmRzLApDaHJpc3RpYW4uCgo+IC1EYW5pZWwK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
