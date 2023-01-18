Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 385E5670F7C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Jan 2023 02:06:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0BCAC3F073
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Jan 2023 01:06:36 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by lists.linaro.org (Postfix) with ESMTPS id 98AE13EE61
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Jan 2023 01:06:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=pZshoTDI;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.218.54 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id bk15so22096980ejb.9
        for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Jan 2023 17:06:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ShTmxSJXe9bG7EdfM5n7W4obQRT36vojvBzqe2LAzEY=;
        b=pZshoTDIWonMzbts+iSk6eqAXIty/XSzGtUDl9PJeQ8XVUyN/eHTt2p93ttz9KQgTu
         9wfLh03a2Yb3RFXF3Sru73t0ORxZsuNA+p8nNqcl89jHRmba9Nt5u7K6/H0O2u8Dy6Qq
         I5UHAGKvsW2h2rCWGoKhMd7Zbo7kvESJIZWJ8RX79n7YMMu1z7Nz1jxAKVxhutkTa5OL
         3lZJt4S31txk7HCAkWRoOz4c+86BN1b5X+30T1zblG8B/4T9LZDn6c8diFa/F/Fhl5r8
         b5BLOL4Pz7VtVUp68bH80NkeocjPtgKEm4YLe8ons9LlWTl/LkY870OpXlxUItBZHYpG
         qKug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ShTmxSJXe9bG7EdfM5n7W4obQRT36vojvBzqe2LAzEY=;
        b=h3OZVwq/tbLIOU2jmHzzWN+s6CChYZnebAOCwAo3ixxNy2Js6NAnHDAnS5/g4pYMcS
         hFMlNfQM3xYesC5SIDmdK17oTOWJt2bvqBhPgjH+2+Q1liTpMjzH3fR2cPHm9y6y/RCj
         ShPx5UW7Nfwpi64yDUrpD6Feqy4WIS5ZsGs1W39M4eQJtlCu9VS8bj9Ob8YqlAT/xGOM
         WlDKNaYQdeCwbLcpDXotg7Ziur+t0ttvpUXEbGlmAHpetXRB2bGTgJToDToixbJJD10Q
         SUYIQVazDoOlf5jqoY2VIwAwXm2/TrpkHWrtdES/xGQ0Aj5STv2aT116eDyJlDv6b/HN
         Jtfw==
X-Gm-Message-State: AFqh2kqzo42ybgo4eg3aiKLSoIkdYAeG7Ipm4HgBYoOAR5KfZr3valEV
	Y72JnGZy8Tsm0TY1DROOvKkO+vu9
X-Google-Smtp-Source: AMrXdXtu4QsednS1nJEdQYpyn+WjmVTWu3VSvaUMOChD1AOs4/QnNcqLZuuyzhNt6LzroTs4JBrteQ==
X-Received: by 2002:a17:906:6844:b0:86e:f478:f598 with SMTP id a4-20020a170906684400b0086ef478f598mr4836197ejs.44.1674003990637;
        Tue, 17 Jan 2023 17:06:30 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id 10-20020a170906210a00b007c0f2d051f4sm13786939ejt.203.2023.01.17.17.06.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 17:06:30 -0800 (PST)
Message-ID: <e14e929b-884c-4250-bce8-0c21fe4f1c8f@linaro.org>
Date: Wed, 18 Jan 2023 03:06:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-GB
To: Jiasheng Jiang <jiasheng@iscas.ac.cn>, robdclark@gmail.com,
 quic_abhinavk@quicinc.com, sean@poorly.run, airlied@gmail.com,
 daniel@ffwll.ch, sumit.semwal@linaro.org, christian.koenig@amd.com
References: <20221212091117.43511-1-jiasheng@iscas.ac.cn>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221212091117.43511-1-jiasheng@iscas.ac.cn>
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.54:from];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[14];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[iscas.ac.cn,gmail.com,quicinc.com,poorly.run,ffwll.ch,linaro.org,amd.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 98AE13EE61
X-Spamd-Bar: ----
Message-ID-Hash: S5KZTUVFDVVMBWEOFT6P5CUIG7I4GIB7
X-Message-ID-Hash: S5KZTUVFDVVMBWEOFT6P5CUIG7I4GIB7
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/msm/gem: Add check for kmalloc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S5KZTUVFDVVMBWEOFT6P5CUIG7I4GIB7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 12/12/2022 11:11, Jiasheng Jiang wrote:
> Add the check for the return value of kmalloc in order to avoid
> NULL pointer dereference in copy_from_user.
> 
> Fixes: 20224d715a88 ("drm/msm/submit: Move copy_from_user ahead of locking bos")
> Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>
> ---
>   drivers/gpu/drm/msm/msm_gem_submit.c | 4 ++++
>   1 file changed, 4 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
