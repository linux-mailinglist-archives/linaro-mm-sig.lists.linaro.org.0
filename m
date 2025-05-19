Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C457ABC940
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 May 2025 23:25:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 74E4844D1F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 May 2025 21:25:24 +0000 (UTC)
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	by lists.linaro.org (Postfix) with ESMTPS id F0B563EA23
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 May 2025 21:25:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=BIKae20I;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.166.46 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-io1-f46.google.com with SMTP id ca18e2360f4ac-86135ad7b4cso274620939f.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 19 May 2025 14:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747689911; x=1748294711; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x4mHlbF3wl/qb51JPbWQ5yBWuZWdTliQjQN9iEmdGIg=;
        b=BIKae20Iu7Agpo04o4XX0MJ8lDy5LXkSJ0TFDDXdt9jzBksBrsAeaSJTicU3gC5qnv
         mJfyGEvD1gsfXqRV+ldafV7ugH2p/nOmgxL1MD/AmnEID7mWI6k4HU2O3ZdEsG0ldsmZ
         St4cFTg8JJtTNypEizlfBWM4jq0eMZTcBl3IWcQ0Eu1I44n9RZLJY97VvWzXIRWl0TdM
         svTHbCaA9fAHVGllVID6StD0mHXUGOaerFHL0PKGGmeydK8NOl8e56ca7NFSerli3kqQ
         Ck2lR2tBy+XHyf/s4fmMFGqvkWK6uD1IR2vijnr3ThhK3cVqscSjVZ2vkSleDhDhsOqy
         IyJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747689911; x=1748294711;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x4mHlbF3wl/qb51JPbWQ5yBWuZWdTliQjQN9iEmdGIg=;
        b=BITFz+PJPvWTvm0LvRl+6QUFExZv2iIGMbaoUO/zcFpvhMGHrBnpZdQKT6Bka+VaF1
         aAPYt8fHvC/OyCWw91hKDwIk/rsx47Vxu+FaxLBqJjm2NvJT0gFUrUAsJLMrdT/GuqaN
         k6TtsRG7aeJbA06BGBPoqBHU6pKt+1ocXElW+RvkVisafldXnMDYz9uEjce69TynS2i0
         W7JMFbaVrkDVL5CZISzbsPsVwTlSJ9/adbkym0vQOCdIgDbebhFRQ+11dWq4aIqIqw7O
         aEcuUMKWBKI4Fl/uB0zoOexK/ohDLW3ZRJTd2vVKUONAbEzH6kTtXZAm4Aw7YGQVt0SN
         kmfw==
X-Forwarded-Encrypted: i=1; AJvYcCVojZnUQbMHFwtd+nSVMWQLHq3bwyhQgZVb7fKEGsX/VrHCxPi8EXQR9kQgxGCrmGmiGMutm9oryjilQ6Ub@lists.linaro.org
X-Gm-Message-State: AOJu0YzonBCgpAL4it5gV0aMCRa21+AQePJ2kYg6HjTll7s3wifmknwf
	X+n/d1BnPQ2nLTNFeZtW5r0vnHr5cwBYwqngXlzFTSMcU2SXncXMMzNTwLRtZZRC0iFZl6vKkFs
	lz3GKzfeD0Ha+63Pqw8aDMkQCbYSHn4Y=
X-Gm-Gg: ASbGncuhnSFJWlJ9ti/U65v/P2cwWNp5tEhiV8X/huwg9SY/SSs+RPCfES+c9Jdrc1I
	D5obRPsDQoF8YxAQJsSLqVGv5+43+pecjRkP1+vhgiVtaRyNoWzzg3gd8Xa4nK85p0iNm/PkLyx
	UK/+EYFZghpdTyDwCBgf1tr8aEw5skOOb7mb65TYW23K5Hk+cejiDz0BXkbJSmWTzCpXC8SgxIS
	AdTWw==
X-Google-Smtp-Source: AGHT+IEpXnbxrm+y9gNaRiUJIS+Wr3A9qyJLNZQ6jRp+M8ohLE3gUy60b6QHqU0uVa09nwBcd4Z4m6UiuBOEBYIoxLA=
X-Received: by 2002:a05:6602:4802:b0:864:48eb:30fd with SMTP id
 ca18e2360f4ac-86a23227308mr1602924239f.11.1747689911296; Mon, 19 May 2025
 14:25:11 -0700 (PDT)
MIME-Version: 1.0
References: <20250519175348.11924-1-robdclark@gmail.com> <CAPM=9tw183FMOT8uUacqegnb5CREAyr8KbXxO2mCuFK-SmUB1A@mail.gmail.com>
In-Reply-To: <CAPM=9tw183FMOT8uUacqegnb5CREAyr8KbXxO2mCuFK-SmUB1A@mail.gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 19 May 2025 14:24:58 -0700
X-Gm-Features: AX0GCFspyxeD68pvp-yDVVZyGDsNu-QeNUAbWG4ptcBy1923782_er28qi-T_4E
Message-ID: <CAF6AEGuDTGVq7sw4oVuHb+cOE_DuKbEPO956oddVcsV2boieoQ@mail.gmail.com>
To: Dave Airlie <airlied@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-7.87 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.87)[99.45%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com,chromium.org,quicinc.com,igalia.com,arndb.de,mainlining.org,kode54.net,oss.qualcomm.com,kernel.org,lists.linux.dev,ziepe.ca,oracle.com,marek.ca,linaro.org,intel.com,lists.linaro.org,lists.infradead.org,somainline.org,nvidia.com,arm.com,poorly.run];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.166.46:from];
	DWL_DNSWL_BLOCKED(0.00)[gmail.com:dkim];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: F0B563EA23
X-Spamd-Bar: -------
Message-ID-Hash: ZC4CPGYWXR7RSUV52JO2NGPL2AIP53F4
X-Message-ID-Hash: ZC4CPGYWXR7RSUV52JO2NGPL2AIP53F4
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, Connor Abbott <cwabbott0@gmail.com>, Rob Clark <robdclark@chromium.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, =?UTF-8?Q?Andr=C3=A9_Almeida?= <andrealmeid@igalia.com>, Arnd Bergmann <arnd@arndb.de>, =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>, Christopher Snowhill <chris@kode54.net>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, Eugene Lepshy <fekz115@gmail.com>, "open list:IOMMU SUBSYSTEM" <iommu@lists.linux.dev>, Jason Gunthorpe <jgg@ziepe.ca>, Jessica Zhang <quic_jesszhan@quicinc.com>, Joao Martins <joao.m.martins@oracle.com>, Jonathan Marek <jonathan@marek.ca>, Jun Nie <jun.nie@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Konrad Dybcio <konradybcio@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-si
 g@lists.linaro.org>, "m oderated list:ARM SMMU DRIVERS" <linux-arm-kernel@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, Nicolin Chen <nicolinc@nvidia.com>, "Rob Herring (Arm)" <robh@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Sean Paul <sean@poorly.run>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 00/40] drm/msm: sparse / "VM_BIND" support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZC4CPGYWXR7RSUV52JO2NGPL2AIP53F4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBNYXkgMTksIDIwMjUgYXQgMjoxNeKAr1BNIERhdmUgQWlybGllIDxhaXJsaWVkQGdt
YWlsLmNvbT4gd3JvdGU6DQo+DQo+IE9uIFR1ZSwgMjAgTWF5IDIwMjUgYXQgMDM6NTQsIFJvYiBD
bGFyayA8cm9iZGNsYXJrQGdtYWlsLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBGcm9tOiBSb2IgQ2xh
cmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+ID4NCj4gPiBDb252ZXJzaW9uIHRvIERSTSBH
UFUgVkEgTWFuYWdlclsxXSwgYW5kIGFkZGluZyBzdXBwb3J0IGZvciBWdWxrYW4gU3BhcnNlDQo+
ID4gTWVtb3J5WzJdIGluIHRoZSBmb3JtIG9mOg0KPiA+DQo+ID4gMS4gQSBuZXcgVk1fQklORCBz
dWJtaXRxdWV1ZSB0eXBlIGZvciBleGVjdXRpbmcgVk0gTVNNX1NVQk1JVF9CT19PUF9NQVAvDQo+
ID4gICAgTUFQX05VTEwvVU5NQVAgY29tbWFuZHMNCj4gPg0KPiA+IDIuIEEgbmV3IFZNX0JJTkQg
aW9jdGwgdG8gYWxsb3cgc3VibWl0dGluZyBiYXRjaGVzIG9mIG9uZSBvciBtb3JlDQo+ID4gICAg
TUFQL01BUF9OVUxML1VOTUFQIGNvbW1hbmRzIHRvIGEgVk1fQklORCBzdWJtaXRxdWV1ZQ0KPiA+
DQo+ID4gSSBkaWQgbm90IGltcGxlbWVudCBzdXBwb3J0IGZvciBzeW5jaHJvbm91cyBWTV9CSU5E
IGNvbW1hbmRzLiAgU2luY2UNCj4gPiB1c2Vyc3BhY2UgY291bGQganVzdCBpbW1lZGlhdGVseSB3
YWl0IGZvciB0aGUgYFNVQk1JVGAgdG8gY29tcGxldGUsIEkgZG9uJ3QNCj4gPiB0aGluayB3ZSBu
ZWVkIHRoaXMgZXh0cmEgY29tcGxleGl0eSBpbiB0aGUga2VybmVsLiAgU3luY2hyb25vdXMvaW1t
ZWRpYXRlDQo+ID4gVk1fQklORCBvcGVyYXRpb25zIGNvdWxkIGJlIGltcGxlbWVudGVkIHdpdGgg
YSAybmQgVk1fQklORCBzdWJtaXRxdWV1ZS4NCj4NCj4gVGhpcyBzZWVtcyBzdWJvcHRpbWFsIGZv
ciBWdWxrYW4gdXNlcnNwYWNlcy4gbm9uLXNwYXJzZSBiaW5kcyBhcmUgYWxsDQo+IHN5bmNocm9u
b3VzLCB5b3UgYXJlIGFkZGluZyBhbiBleHRyYSBpb2N0bCB0byB3YWl0LCBvciBkbyB5b3UgbWFu
YWdlDQo+IHRoZXNlIHZpYSBhIGRpZmZlcmVudCBtZWNoYW5pc20/DQoNCk5vcm1hbGx5IGl0J3Mg
anVzdCBhbiBleHRyYSBpbi1mZW5jZSBmb3IgdGhlIFNVQk1JVCBpb2N0bCB0byBlbnN1cmUNCnRo
ZSBiaW5kcyBoYXBwZW4gYmVmb3JlIGNtZCBleGVjdXRpb24NCg0KV2hlbiBpdCBjb21lcyB0byBV
QVBJLCBpdCdzIGVhc2llciB0byBhZGQgc29tZXRoaW5nIGxhdGVyLCB0aGFuIHRvDQp0YWtlIHNv
bWV0aGluZyBhd2F5LCBzbyBJIGRvbid0IHNlZSBhIHByb2JsZW0gYWRkaW5nIHN5bmNocm9ub3Vz
IGJpbmRzDQpsYXRlciBpZiB0aGF0IHByb3ZlcyB0byBiZSBuZWVkZWQuICBCdXQgSSBkb24ndCB0
aGluayBpdCBpcy4NCg0KQlIsDQotUg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
