Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 766FD6A65B7
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Mar 2023 03:43:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 84AC13F33A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Mar 2023 02:43:18 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	by lists.linaro.org (Postfix) with ESMTPS id B73E83E8AA
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Mar 2023 02:42:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=C2awFZi3;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.216.47 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id q31-20020a17090a17a200b0023750b69614so11547046pja.5
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 18:42:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677638552;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TtEI17+g3+FYNmzjZog7TObGaEISKv33yP7XaUgcMpw=;
        b=C2awFZi3UZK1zN88aASBwpbUmIyVjmgoYglFuONN/+0apTYd5IWDuLiOz1c1VN8upZ
         6mlskXUv1yXAzEH8dxRsozpV2xWpBd80NAmpQGfUmvJrKEuXhVvb/V6prcMvsaRZiCo+
         iXCFzMv9fj9v6B/f7hkrooQoUAGi4cO0UN3c8UHZpBrPIC1gOPBU49wHROJNBocEHvmp
         tb3cm050fGMauVRXy7ifSfX1VzGGFhZ3tAEBXlF+mQg8FsIVHkeT8V5zrFCozrWvuK8Q
         9rrdYm6eG1V39BS+g40xVcIy99Q0FgF6YWINYxQvQWe/rGwLsUCHKm73ixthff5BDTcM
         E7mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677638552;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TtEI17+g3+FYNmzjZog7TObGaEISKv33yP7XaUgcMpw=;
        b=a9/sRSp7zR2p31rc/6A8CaYAimiAgJaQOKJqMGXD+J5U2GWx559VrSkJ0PhF9OjUG5
         8KHnT10uoyOXvk4gYc0vt7PugC0cf6vUybIa70ZU30dzDdSXWOt5STQSua7eAwLFTwE/
         FxvzhYguAnFtrWVPfaGxz1ILuY1LroSEAsckLz0B2sjdyAKbVUBtWk9z9cd88cm3XiFT
         1OdpbYsjNCxx6XjdfXeooSpvWMjArU+ckhfCKOI78uUqLxaW/DAP82tGrNyc/3UVvIRr
         do2texIJE0qL+qy+NYqHAVKO3SMZrlk2uSalt6D0evhUN2h9Dj2breIAwn9XBHJ1bRiV
         jRAA==
X-Gm-Message-State: AO0yUKXaI+wTULR5tgQp7bSZlzF8tqpp5QUNAfRcVepBWOxlSYombMhX
	8eDPqED+EPoeegRKbfhplpQ=
X-Google-Smtp-Source: AK7set/i/rEne9Miy3soqJWFleyHZluwc5UHR+jsPgrNaLUUlsoxf8qLJ7q2HYdNV1zs/GO9IiWdsQ==
X-Received: by 2002:a17:902:d54d:b0:19e:2298:c53d with SMTP id z13-20020a170902d54d00b0019e2298c53dmr4379817plf.10.1677638551793;
        Tue, 28 Feb 2023 18:42:31 -0800 (PST)
Received: from [192.168.43.80] (subs02-180-214-232-27.three.co.id. [180.214.232.27])
        by smtp.gmail.com with ESMTPSA id ju4-20020a170903428400b0019a7563ff15sm7198090plb.115.2023.02.28.18.42.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Feb 2023 18:42:31 -0800 (PST)
Message-ID: <7aaf6ed9-3da2-0535-f269-fc5c35e7aadc@gmail.com>
Date: Wed, 1 Mar 2023 09:42:14 +0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>
References: <20230227193535.2822389-1-robdclark@gmail.com>
 <Y/320d96QmbLe1J8@debian.me>
 <CAF6AEGuqHDDQS22qcp8sk+5bj16XFiBarCLvpX=qNc2r2euMUw@mail.gmail.com>
From: Bagas Sanjaya <bagasdotme@gmail.com>
In-Reply-To: <CAF6AEGuqHDDQS22qcp8sk+5bj16XFiBarCLvpX=qNc2r2euMUw@mail.gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B73E83E8AA
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.59 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.99)[99.95%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[180.214.232.27:received,209.85.216.47:from];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.47:from];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,quicinc.com,linaro.org,padovan.org,lists.linaro.org,vger.kernel.org,huawei.com,poorly.run];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[27];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: L55OSYV7FO4MKKNUMQHVJ4KDMGOUGGLT
X-Message-ID-Hash: L55OSYV7FO4MKKNUMQHVJ4KDMGOUGGLT
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Douglas Anderson <dianders@chromium.org>, Gustavo Padovan <gustavo@padovan.org>, intel-gfx@lists.freedesktop.org, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, Liu Shixin <liushixin2@huawei.com>, Sean Paul
  <sean@poorly.run>, Stephen Boyd <swboyd@chromium.org>, Vinod Polimera <quic_vpolimer@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 00/15] dma-fence: Deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L55OSYV7FO4MKKNUMQHVJ4KDMGOUGGLT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 2/28/23 22:44, Rob Clark wrote:
> You can find my branch here:
> 
> https://gitlab.freedesktop.org/robclark/msm/-/commits/dma-fence/deadline
> 

Pulled, thanks!

-- 
An old man doll... just what I always wanted! - Clara

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
