Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id W2luJ35gPWrN2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:08:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 280506C7B4F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:08:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ursulin.net header.s=google header.b=LeO1PYYF;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=none
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D218446C8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:08:13 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by lists.linaro.org (Postfix) with ESMTPS id 117093F91D
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 14:00:31 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-6976b0c5adbso7637901a12.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 07:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ursulin.net; s=google; t=1782223230; x=1782828030; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pW2T0l7vNC7YUbJOOE1maSFRjhJC2eie7o0FsVV1LoQ=;
        b=LeO1PYYFPxcIrNMCGOPi6K2IQouyGwo0MCLYPM6o0sfxiUtSCNXEpmjcM212axaFxA
         pL7ZlFALhcrTYTzYDBTMktCAQKwJnuKAJ0nlB/SxTHC+lcHNwc5BpsRNBgVBnhE+UOOI
         WqEeMe+yMYBnju5dU/ArfjJLTWGfJ9eNqGvpbJXx4bZkckafPjiT4wcpiaxe6h15JMLQ
         Z/Z/y7Os7wMYFysGmUE4WJFbY4Dk22sdxBzgkTSen4epbU9QC/R3oSc0yQ7Gj02cIqJb
         +LVElSYHO5lhfyvLfI2lMtl61t1r3hpOIWYwq/v0Rox9uU48BNBRkAT+DnL0/d9UHkqk
         w34Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782223230; x=1782828030;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pW2T0l7vNC7YUbJOOE1maSFRjhJC2eie7o0FsVV1LoQ=;
        b=OtQg7oGLDGDNpdln+msOJbgxdL//Y1xTKchh1CEHU3JTPJASfOXHsyjKVc9kZOuBem
         TF/ZEEKb2+Mw2dzFVkN0+soGGQD5ATsMmzxNQpuhKsF4f/LmrXxSH3UhSfAuwyqkQuCe
         lnQH4SkgxjQmEPrdjc8FYPgiGMIYXH2RjR0fhMQ1vlsK5gyN3yCFRo1I4rMe3vJrohJo
         xe4+k0NHLDn+1AbwmAc10CAlnZ9+5nfbbf/5YHxYrg/ayTnIhAwr+lfd/kvOIi9jepws
         hnbik3kAIffGcPMVImu9N8xXFaEqheXz+wYaDfs9Zu1QocCZFIPcgwnlRpLppsX2Iy8k
         STuA==
X-Forwarded-Encrypted: i=1; AFNElJ+/N4oonclCx+fzTqoTKTI99h4qWmJ4s4oDtmd5i5RgUfPyWjXJtt+ywFVLHOhm3YObhZOB8vGaIwQIMAlF@lists.linaro.org
X-Gm-Message-State: AOJu0Ywh69Lsh4mJhy1I/B+5GrPCgYOnMM0eTZ7GeV3Aelw0xySzjlEc
	0wUMuwBLWUt72R1fHqGhAR4spl0mHsU+tg/NP05gRqvSE8AQgW0w71o3qa4ywew/Nyg=
X-Gm-Gg: AfdE7ckcPQljpGAZxZL9SBflzTMGBoUQhNce7KYu92QU75yTrQFujH0swwJfuCHTf+i
	fuT3lsDg1/moivICKZCCKZmxgcvUGEaAFu8QFC9f+VoWw8DVTmjni+NfpHyeuPzVfY4RCHCOfZP
	N3yX14/Q9C2gaXSXMVwQJkAvDJPmW6GBNYfJAZSDgWSh4i9GIEFKfZi9YlReJhFqjEqlB7cqyOc
	SyPs02NqqDHILKad7gw32iw5bMIzJ4uyS7IwHwqb9wQEDdFvb5rQNIY52e55Q9gj8/jxyuEMFtb
	LkWWLejNncHPPTPWkB5NYzmd8oNc3hHkPQWvzyvPHCOcDi+M7zTekPkk9z1XBFeNKAVhdOMThKy
	fw6xzn7SCyhzWWEpo5Esm5ybuN8Vp4ar6s5KyDWXXAHb6R14z+DbIFfoh3+FARQ07J9eiYzLrtM
	jVWaV27oipjMCS9S+rD+Q9uv5ToM7UKg2hrw==
X-Received: by 2002:a05:6402:3218:b0:697:b10a:35ce with SMTP id 4fb4d7f45d1cf-697dba620e2mr1527552a12.1.1782223229172;
        Tue, 23 Jun 2026 07:00:29 -0700 (PDT)
Received: from [192.168.0.116] ([90.240.106.137])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-697d3c7dc3fsm1544454a12.13.2026.06.23.07.00.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2026 07:00:28 -0700 (PDT)
Message-ID: <5a0d7111-c765-43c7-9bf1-6eb055b6784c@ursulin.net>
Date: Tue, 23 Jun 2026 15:00:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Philipp Stanner <phasta@kernel.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Tvrtko Ursulin <tursulin@igallia.net>
References: <20260623133457.1029880-2-phasta@kernel.org>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20260623133457.1029880-2-phasta@kernel.org>
X-Spamd-Bar: ---
X-MailFrom: tursulin@ursulin.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GWMHPRI26NQS6YRPV5FJX3EF7TNTJLP2
X-Message-ID-Hash: GWMHPRI26NQS6YRPV5FJX3EF7TNTJLP2
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:06:26 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/dma-fence: Set better string for dma_fence_driver_name()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GWMHPRI26NQS6YRPV5FJX3EF7TNTJLP2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	DATE_IN_PAST(1.00)[51];
	R_DKIM_REJECT(1.00)[ursulin.net:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tursulin@igallia.net,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DMARC_NA(0.00)[ursulin.net];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[tursulin@ursulin.net,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[ursulin.net:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,ursulin.net:mid,ursulin.net:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 280506C7B4F


On 23/06/2026 14:34, Philipp Stanner wrote:
> dma_fence_driver_name() reports that a driver whose fence is already
> signaled is a "detached-driver". This is incorrect, the driver might
> still be loaded and running.
> 
> Rename that string to something more descriptive.
> 
> Signed-off-by: Philipp Stanner <phasta@kernel.org>
> ---
> Just compile-tested.
> ---
>   drivers/dma-buf/dma-fence.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
> index c7ea1e75d38a..9c3dfa7b0066 100644
> --- a/drivers/dma-buf/dma-fence.c
> +++ b/drivers/dma-buf/dma-fence.c
> @@ -1173,7 +1173,7 @@ const char __rcu *dma_fence_driver_name(struct dma_fence *fence)
>   	if (!dma_fence_test_signaled_flag(fence))
>   		return (const char __rcu *)ops->get_driver_name(fence);
>   	else
> -		return (const char __rcu *)"detached-driver";
> +		return (const char __rcu *)"driver-whose-fence-is-signaled";

My logic was "driver detached from the fence". :)

Anyway, no strong opinion apart to be mindful on whether some output 
becomes overly verbose.

Regards,

Tvrtko

>   }
>   EXPORT_SYMBOL(dma_fence_driver_name);
>   

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
