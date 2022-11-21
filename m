Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0F2631D55
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Nov 2022 10:51:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AFFB33ED0D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Nov 2022 09:51:55 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by lists.linaro.org (Postfix) with ESMTPS id 87FAA3EC6C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Nov 2022 09:51:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=i0zqqyGe;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.46 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f46.google.com with SMTP id e13so15451664edj.7
        for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Nov 2022 01:51:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dbIkFxWp7OGSzVyZhCFFdNTbMlS4Au162oVI4e0U/e8=;
        b=i0zqqyGezIfwQHSrRILCFIll7ZZUWu0GoKvsgEqVswfqBa7Mf+g6V4+TFB/LPVMK+i
         6Hky+QlMkdm52C65DwVho8nbjcG8Aw1ZhY6/70nOW4O9i7VAneMgVMBB98Xk7hmydBhi
         dCUetrS1FYeSGoBaDV3iI9c5BTQg2x1qT+Q4BARIOxMQj/fIPHTDGFuY4AXepdzajnS+
         eoQPDRh+lUIstP92yrg4PHwvWo1I1EX9vtJc60ozxICem8zxXvfW/lkFDgxAkyTJFpHJ
         Ds48n9R5pUucBCUNaz0SjITs51JRxCJZ32lvWhok/wgn040SiTpHCPoWKOKSGoS6k/vM
         tYUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dbIkFxWp7OGSzVyZhCFFdNTbMlS4Au162oVI4e0U/e8=;
        b=yERd/N5Qb1EndWaUYda+btlxmPX4IpYXzwaRvL7RdX7eHe+adu4RzsG7ir6PEO78Qn
         kKd3XlvM5AFUSby8Ix9A2Fb62e8/t1vxDtwAmyr3eUuHZ4HlVjMZqiDkVX69aDb+WVxv
         rZSQ50N81spR7k9GoB80gjYJUKGMzLqkUGHHMYzo4L+U64S7CZqeuO7/berFMQrTuIGb
         Qsju1cghL7O9x3ZZc3NPqyUvAx/ThufgqcJ4sorubcmNEUGdA47y7qUfQvNJgv4jctNv
         B6DmWwZGPhkzjCv0Nig+FT7zeH5ckaPAqA1va4KBVwU1nwP9uN4OLoENRxKHJg7ur9ru
         B+XA==
X-Gm-Message-State: ANoB5pkBacGtuxxoqK3sC6vBxyr0htrikcaZJ+WXhluIR1XMABZ4qxIw
	QIQB68uz7mHj11clpW4JxiQ=
X-Google-Smtp-Source: AA0mqf5UmVueQ+rML91hvVDpfCRH9/Xe5Mop01dSSGY1DvZy+Z3CBmUqEesybd+1AthUHwK+D6XBtA==
X-Received: by 2002:a05:6402:6c6:b0:469:590d:ae9a with SMTP id n6-20020a05640206c600b00469590dae9amr1672214edy.277.1669024305535;
        Mon, 21 Nov 2022 01:51:45 -0800 (PST)
Received: from [192.168.178.21] (p5b0ea229.dip0.t-ipconnect.de. [91.14.162.41])
        by smtp.gmail.com with ESMTPSA id p18-20020a17090628d200b00782ee6b34f2sm4762763ejd.183.2022.11.21.01.51.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 01:51:44 -0800 (PST)
Message-ID: <88779a02-6b99-09e3-2ad0-396fb9b2b13f@gmail.com>
Date: Mon, 21 Nov 2022 10:51:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org
References: <20221121094649.1556002-1-gregkh@linuxfoundation.org>
 <20221121094649.1556002-3-gregkh@linuxfoundation.org>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <20221121094649.1556002-3-gregkh@linuxfoundation.org>
X-Rspamd-Queue-Id: 87FAA3EC6C
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_SEVEN(0.00)[8];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,lists.freedesktop.org:email,linaro.org:email,linuxfoundation.org:email,mail-ed1-f46.google.com:rdns,mail-ed1-f46.google.com:helo];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.46:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: EHMLP7TT6XRY5NBZLEXKQ7MEB7VWTNMR
X-Message-ID-Hash: EHMLP7TT6XRY5NBZLEXKQ7MEB7VWTNMR
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Rafael J. Wysocki" <rafael@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/5] kobject: kset_uevent_ops: make filter() callback take a const *
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EHMLP7TT6XRY5NBZLEXKQ7MEB7VWTNMR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjEuMTEuMjIgdW0gMTA6NDYgc2NocmllYiBHcmVnIEtyb2FoLUhhcnRtYW46DQo+IFRoZSBm
aWx0ZXIoKSBjYWxsYmFjayBpbiBzdHJ1Y3Qga3NldF91ZXZlbnRfb3BzIGRvZXMgbm90IG1vZGlm
eSB0aGUNCj4ga29iamVjdCBwYXNzZWQgaW50byBpdCwgc28gbWFrZSB0aGUgcG9pbnRlciBjb25z
dCB0byBlbmZvcmNlIHRoaXMNCj4gcmVzdHJpY3Rpb24uICBXaGVuIGRvaW5nIHNvLCBmaXggdXAg
YWxsIGV4aXN0aW5nIGZpbHRlcigpIGNhbGxiYWNrcyB0bw0KPiBoYXZlIHRoZSBjb3JyZWN0IHNp
Z25hdHVyZSB0byBwcmVzZXJ2ZSB0aGUgYnVpbGQuDQo+DQo+IENjOiAiUmFmYWVsIEouIFd5c29j
a2kiIDxyYWZhZWxAa2VybmVsLm9yZz4NCj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2Fs
QGxpbmFyby5vcmc+DQo+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4NCj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KPiBDYzogZHJpLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnDQo+IFNpZ25lZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4
Zm91bmRhdGlvbi5vcmc+DQoNCkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+IGZvciB0aGUgY2hhbmdlcyB0byANCnRoZSBETUEtYnVmIHN1YnN5c3Rl
bS4NCg0KPiAtLS0NCj4gICBkcml2ZXJzL2Jhc2UvYnVzLmMgICAgICAgICAgICAgICAgICAgIHwg
MiArLQ0KPiAgIGRyaXZlcnMvYmFzZS9jb3JlLmMgICAgICAgICAgICAgICAgICAgfCA0ICsrLS0N
Cj4gICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi1zeXNmcy1zdGF0cy5jIHwgMiArLQ0KPiAgIGlu
Y2x1ZGUvbGludXgva29iamVjdC5oICAgICAgICAgICAgICAgfCAyICstDQo+ICAga2VybmVsL3Bh
cmFtcy5jICAgICAgICAgICAgICAgICAgICAgICB8IDIgKy0NCj4gICA1IGZpbGVzIGNoYW5nZWQs
IDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvYmFzZS9idXMuYyBiL2RyaXZlcnMvYmFzZS9idXMuYw0KPiBpbmRleCA3Y2E0N2U1YjNjMWYu
LjRlYzZkYmFiNzNiZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9iYXNlL2J1cy5jDQo+ICsrKyBi
L2RyaXZlcnMvYmFzZS9idXMuYw0KPiBAQCAtMTYzLDcgKzE2Myw3IEBAIHN0YXRpYyBzdHJ1Y3Qg
a29ial90eXBlIGJ1c19rdHlwZSA9IHsNCj4gICAJLnJlbGVhc2UJPSBidXNfcmVsZWFzZSwNCj4g
ICB9Ow0KPiAgIA0KPiAtc3RhdGljIGludCBidXNfdWV2ZW50X2ZpbHRlcihzdHJ1Y3Qga29iamVj
dCAqa29iaikNCj4gK3N0YXRpYyBpbnQgYnVzX3VldmVudF9maWx0ZXIoY29uc3Qgc3RydWN0IGtv
YmplY3QgKmtvYmopDQo+ICAgew0KPiAgIAljb25zdCBzdHJ1Y3Qga29ial90eXBlICprdHlwZSA9
IGdldF9rdHlwZShrb2JqKTsNCj4gICANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvYmFzZS9jb3Jl
LmMgYi9kcml2ZXJzL2Jhc2UvY29yZS5jDQo+IGluZGV4IGE3OWI5OWVjZjRkOC4uMDA1YTJiMDky
ZjNlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2Jhc2UvY29yZS5jDQo+ICsrKyBiL2RyaXZlcnMv
YmFzZS9jb3JlLmMNCj4gQEAgLTIzNjIsMTIgKzIzNjIsMTIgQEAgc3RhdGljIHN0cnVjdCBrb2Jq
X3R5cGUgZGV2aWNlX2t0eXBlID0gew0KPiAgIH07DQo+ICAgDQo+ICAgDQo+IC1zdGF0aWMgaW50
IGRldl91ZXZlbnRfZmlsdGVyKHN0cnVjdCBrb2JqZWN0ICprb2JqKQ0KPiArc3RhdGljIGludCBk
ZXZfdWV2ZW50X2ZpbHRlcihjb25zdCBzdHJ1Y3Qga29iamVjdCAqa29iaikNCj4gICB7DQo+ICAg
CWNvbnN0IHN0cnVjdCBrb2JqX3R5cGUgKmt0eXBlID0gZ2V0X2t0eXBlKGtvYmopOw0KPiAgIA0K
PiAgIAlpZiAoa3R5cGUgPT0gJmRldmljZV9rdHlwZSkgew0KPiAtCQlzdHJ1Y3QgZGV2aWNlICpk
ZXYgPSBrb2JqX3RvX2Rldihrb2JqKTsNCj4gKwkJY29uc3Qgc3RydWN0IGRldmljZSAqZGV2ID0g
a29ial90b19kZXYoa29iaik7DQo+ICAgCQlpZiAoZGV2LT5idXMpDQo+ICAgCQkJcmV0dXJuIDE7
DQo+ICAgCQlpZiAoZGV2LT5jbGFzcykNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLXN5c2ZzLXN0YXRzLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi1zeXNmcy1zdGF0
cy5jDQo+IGluZGV4IDJiYmEwYmFiY2I2Mi4uZjY5ZDY4MTIyYjliIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi1zeXNmcy1zdGF0cy5jDQo+ICsrKyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtYnVmLXN5c2ZzLXN0YXRzLmMNCj4gQEAgLTEzMiw3ICsxMzIsNyBAQCB2b2lkIGRt
YV9idWZfc3RhdHNfdGVhcmRvd24oc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCj4gICANCj4gICAN
Cj4gICAvKiBTdGF0aXN0aWNzIGZpbGVzIGRvIG5vdCBuZWVkIHRvIHNlbmQgdWV2ZW50cy4gKi8N
Cj4gLXN0YXRpYyBpbnQgZG1hYnVmX3N5c2ZzX3VldmVudF9maWx0ZXIoc3RydWN0IGtvYmplY3Qg
KmtvYmopDQo+ICtzdGF0aWMgaW50IGRtYWJ1Zl9zeXNmc191ZXZlbnRfZmlsdGVyKGNvbnN0IHN0
cnVjdCBrb2JqZWN0ICprb2JqKQ0KPiAgIHsNCj4gICAJcmV0dXJuIDA7DQo+ICAgfQ0KPiBkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9saW51eC9rb2JqZWN0LmggYi9pbmNsdWRlL2xpbnV4L2tvYmplY3Qu
aA0KPiBpbmRleCA1YTJkNThlMTBiZjUuLjY0MGY1OWQ0YjNkZSAxMDA2NDQNCj4gLS0tIGEvaW5j
bHVkZS9saW51eC9rb2JqZWN0LmgNCj4gKysrIGIvaW5jbHVkZS9saW51eC9rb2JqZWN0LmgNCj4g
QEAgLTEzNSw3ICsxMzUsNyBAQCBzdHJ1Y3Qga29ial91ZXZlbnRfZW52IHsNCj4gICB9Ow0KPiAg
IA0KPiAgIHN0cnVjdCBrc2V0X3VldmVudF9vcHMgew0KPiAtCWludCAoKiBjb25zdCBmaWx0ZXIp
KHN0cnVjdCBrb2JqZWN0ICprb2JqKTsNCj4gKwlpbnQgKCogY29uc3QgZmlsdGVyKShjb25zdCBz
dHJ1Y3Qga29iamVjdCAqa29iaik7DQo+ICAgCWNvbnN0IGNoYXIgKigqIGNvbnN0IG5hbWUpKHN0
cnVjdCBrb2JqZWN0ICprb2JqKTsNCj4gICAJaW50ICgqIGNvbnN0IHVldmVudCkoc3RydWN0IGtv
YmplY3QgKmtvYmosIHN0cnVjdCBrb2JqX3VldmVudF9lbnYgKmVudik7DQo+ICAgfTsNCj4gZGlm
ZiAtLWdpdCBhL2tlcm5lbC9wYXJhbXMuYyBiL2tlcm5lbC9wYXJhbXMuYw0KPiBpbmRleCA1Yjky
MzEwNDI1YzUuLmQyMjM3MjA5Y2VkYSAxMDA2NDQNCj4gLS0tIGEva2VybmVsL3BhcmFtcy5jDQo+
ICsrKyBiL2tlcm5lbC9wYXJhbXMuYw0KPiBAQCAtOTI2LDcgKzkyNiw3IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3Qgc3lzZnNfb3BzIG1vZHVsZV9zeXNmc19vcHMgPSB7DQo+ICAgCS5zdG9yZSA9IG1v
ZHVsZV9hdHRyX3N0b3JlLA0KPiAgIH07DQo+ICAgDQo+IC1zdGF0aWMgaW50IHVldmVudF9maWx0
ZXIoc3RydWN0IGtvYmplY3QgKmtvYmopDQo+ICtzdGF0aWMgaW50IHVldmVudF9maWx0ZXIoY29u
c3Qgc3RydWN0IGtvYmplY3QgKmtvYmopDQo+ICAgew0KPiAgIAljb25zdCBzdHJ1Y3Qga29ial90
eXBlICprdHlwZSA9IGdldF9rdHlwZShrb2JqKTsNCj4gICANCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
