Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DACBC786C30
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 11:42:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C2F7B3F053
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 09:42:30 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by lists.linaro.org (Postfix) with ESMTPS id 69C043F200
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Aug 2023 09:42:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=sePIHjLQ;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.41 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-52a4818db4aso333339a12.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Aug 2023 02:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692870140; x=1693474940;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wjGIWwx9sMqqDG4N0HeXS9byjWgyDyOJOPKv8Cpifs8=;
        b=sePIHjLQiTnleOV5GoSLYhUfJFrfCxpJXhIB9zbk67whQZHbpN8qokQ5usK23OMfQT
         araDscwvMtKVxYqkgH2unppqRTai0xCKgCKUmuRdRb29nYgeu2mkNFqxSTxGwVauoBxq
         zaScxgfi0YtXTYDWIiHmP+BcwSpDy5ME7rEJBAw+RO9LUhQHmhnM0uhQ7pPkax0g+Xmy
         LkmXjPlv6JOPXVCnp50OUkmELNyNfqX1Xcge1cl6BwODCsOOJV8NWq34FnMKbjf/j55O
         6uUtqUYwalEfw3vLB0/aWt5+nUZQeOHnGmJzJmH0TFDsMBdezCEPsNXDImldpCPm7YPe
         IQ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692870140; x=1693474940;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wjGIWwx9sMqqDG4N0HeXS9byjWgyDyOJOPKv8Cpifs8=;
        b=bBZX/p40j5douIkU0kasF/0S6F7qChRC6DPrfTo3g8WTVeoViGCoKEWPPe+c0P5uT6
         GnAciHD8P19/7Wzq3thhA6wNXNtlJBFcL1NEPACpGQnELmKiQ1vm+vD3do0Qv4ihU6R1
         xH7mKZyToa+bZk+kzqLd6LdvTAfn5ZH4lsXFBhl8if0BHSIN0RkX2BNpzXVs5MPq4zi7
         ietrTy+O7gFfRB+4H/pzoMHA4yqPfMSsG7hrWiAzsEGaKAstnLLnLEIWzQ8CQNlipI2B
         6iMNozeuChhEMBMp0w4RWAVEKmAeAT3ObCsKuF/hQ3lN5bSVida5z+nY0Bje5pHSSLsW
         VUQg==
X-Gm-Message-State: AOJu0YxFX56OCtT22gjIqawoX7jCz2JW8CmOK5NnCs1XtSayg0yiPO+X
	MHBTMq/TkuHI/joH4sxTCcA=
X-Google-Smtp-Source: AGHT+IHHj0Z4GE4VEpBXOqxHymqAxmvG7gD4sWN1EVfNANnc4VAKwXJAvMT1o/1+L1vUGkYCIDbXCg==
X-Received: by 2002:aa7:c54f:0:b0:523:47cf:5034 with SMTP id s15-20020aa7c54f000000b0052347cf5034mr10061173edr.34.1692870140139;
        Thu, 24 Aug 2023 02:42:20 -0700 (PDT)
Received: from [192.168.178.25] ([134.19.100.78])
        by smtp.gmail.com with ESMTPSA id i15-20020a50fc0f000000b0051e1660a34esm10229017edr.51.2023.08.24.02.42.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Aug 2023 02:42:19 -0700 (PDT)
Message-ID: <d085c6e4-36d2-cd69-bb43-3c8d46da5239@gmail.com>
Date: Thu, 24 Aug 2023 11:42:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Lee Jones <lee@kernel.org>
References: <20230824073710.2677348-1-lee@kernel.org>
 <20230824073710.2677348-11-lee@kernel.org>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <20230824073710.2677348-11-lee@kernel.org>
X-Rspamd-Queue-Id: 69C043F200
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.41:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	BLOCKLISTDE_FAIL(0.00)[209.85.208.41:query timed out,134.19.100.78:query timed out];
	RCPT_COUNT_SEVEN(0.00)[9];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: IWZ7EOBES3EDEVNKDLBKZVIPXQBDDNLP
X-Message-ID-Hash: IWZ7EOBES3EDEVNKDLBKZVIPXQBDDNLP
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 10/20] drm/scheduler/sched_main: Provide short description of missing param 'result'
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IWZ7EOBES3EDEVNKDLBKZVIPXQBDDNLP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjQuMDguMjMgdW0gMDk6MzYgc2NocmllYiBMZWUgSm9uZXM6DQo+IEZpeGVzIHRoZSBmb2xs
b3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3YXJuaW5nKHMpOg0KPg0KPiAgIGRyaXZlcnMvZ3B1L2Ry
bS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jOjI2Njogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVy
IG9yIG1lbWJlciAncmVzdWx0JyBub3QgZGVzY3JpYmVkIGluICdkcm1fc2NoZWRfam9iX2RvbmUn
DQo+DQo+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlQGtlcm5lbC5vcmc+DQoNClJldmll
d2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQoNCj4g
LS0tDQo+IENjOiBMdWJlbiBUdWlrb3YgPGx1YmVuLnR1aWtvdkBhbWQuY29tPg0KPiBDYzogRGF2
aWQgQWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4NCj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmll
bEBmZndsbC5jaD4NCj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+
DQo+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4g
Q2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGxpbnV4LW1lZGlhQHZn
ZXIua2VybmVsLm9yZw0KPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQo+IC0t
LQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jIHwgMSArDQo+ICAg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVs
ZXIvc2NoZWRfbWFpbi5jDQo+IGluZGV4IDUwNjM3MWM0Mjc0NTEuLjFlZjU1OGNkYTYwY2UgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jDQo+IEBAIC0yNTksNiAr
MjU5LDcgQEAgZHJtX3NjaGVkX3JxX3NlbGVjdF9lbnRpdHlfZmlmbyhzdHJ1Y3QgZHJtX3NjaGVk
X3JxICpycSkNCj4gICAvKioNCj4gICAgKiBkcm1fc2NoZWRfam9iX2RvbmUgLSBjb21wbGV0ZSBh
IGpvYg0KPiAgICAqIEBzX2pvYjogcG9pbnRlciB0byB0aGUgam9iIHdoaWNoIGlzIGRvbmUNCj4g
KyAqIEByZXN1bHQ6IGZlbmNlIGVycm9yIHRvIGZvcndhcmQgYW5kIHNldA0KPiAgICAqDQo+ICAg
ICogRmluaXNoIHRoZSBqb2IncyBmZW5jZSBhbmQgd2FrZSB1cCB0aGUgd29ya2VyIHRocmVhZC4N
Cj4gICAgKi8NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
