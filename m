Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE6E6710BC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Jan 2023 03:06:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8FD353F073
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Jan 2023 02:06:54 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by lists.linaro.org (Postfix) with ESMTPS id 80FB23EE61
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Jan 2023 02:06:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=QVIZgJlL;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.208.45 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id m21so47693053edc.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Jan 2023 18:06:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hPh85HDV7Jw4nWVOxnyUOQB6ME/srGkxE0cyhhHU/Yk=;
        b=QVIZgJlLk1umjAWsyCPwP7XPYhLhTT9losqSf5WkDA1WJ/TBaeqSo0vYTrysPHJnb8
         7pyZN8RlI8lYKRpA/1yX/+Ei5U5wxeM/LU1S26Sk/Uj5peY++NLxBsJPWcw63oUfvi2z
         8HyQvVXIy+CCd0JHJ3eGEdxrlhXOl4+m6pW9goseei2GipCXfvL2LX+2E4pidNj826yM
         j97TB9XMMs7qLQcdM9oMiayj6m97CCinuCcByh4SZ6OmwdMhXa5LXbaDNZhBpPxr/6Ie
         RxN/bWm2C4DthmWxU6ifh/wgVGtMjKXkbr43NBruyh8jisWbezeSvtjBu+jDni/fDXYC
         SxQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hPh85HDV7Jw4nWVOxnyUOQB6ME/srGkxE0cyhhHU/Yk=;
        b=j+193A7/nAKQWB7Y8wi25BFf2ixR18zSX8huLR3VpSEIgFJVoB9gcB1wRUh4TpK1Y1
         xtLTvw9Qc2KDuQJGgR8ZfT/B/FD10CpfEjqDRPKM1kWW/ZpKJLXUGCj6ON5c9R+HKc1W
         B4u8BBBOhZBkGOw6l+WaiVHe6d52Us1/NQthUbV+SGAsT3cMXISm9dyDKUFQLXpC9JLs
         TK4D4TI8Ugu7kPrE6bepPkoAZcvkE/9v5LbGYh0mEeXdzRIpVCuN3bz34MlK2B4mBYKB
         oJl7R4hpgrJMyfhZqX4RD0A9CJ05tTtqiAOKkIwhRbjy/BYi+c8k8w7gOx5K1tbCUbpn
         lGFw==
X-Gm-Message-State: AFqh2ko46CLZshClDSbIUzKMYkQ/FmLnZaAnyPYfwHOSyqBlJyqQk1ne
	DnexZ2r1W1NYMGnRDqbdHtwJbEFJ
X-Google-Smtp-Source: AMrXdXtMG/C8Z6HucSOog75whRYOxAnKIALrlKkOKMedyIiyZJTMJBZKlKtfCmnPPSpnF4D8Wc/TOg==
X-Received: by 2002:a05:6402:298e:b0:496:6a20:6b61 with SMTP id eq14-20020a056402298e00b004966a206b61mr5469620edb.22.1674007591554;
        Tue, 17 Jan 2023 18:06:31 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id kx1-20020a170907774100b0084d368b1628sm12702694ejc.40.2023.01.17.18.06.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 18:06:31 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: robdclark@gmail.com,
	quic_abhinavk@quicinc.com,
	sean@poorly.run,
	airlied@gmail.com,
	sumit.semwal@linaro.org,
	christian.koenig@amd.com,
	Jiasheng Jiang <jiasheng@iscas.ac.cn>
Date: Wed, 18 Jan 2023 04:06:13 +0200
Message-Id: <167400670545.1683873.7363279471120139264.b4-ty@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230109022038.2163-1-jiasheng@iscas.ac.cn>
References: <20230109022038.2163-1-jiasheng@iscas.ac.cn>
MIME-Version: 1.0
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com,quicinc.com,poorly.run,linaro.org,amd.com,iscas.ac.cn];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[linaro.org:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.45:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 80FB23EE61
X-Spamd-Bar: ---
Message-ID-Hash: RXMXXJNA6RYTVQEEWL7H5D5BAAINN55D
X-Message-ID-Hash: RXMXXJNA6RYTVQEEWL7H5D5BAAINN55D
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, freedreno@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/msm: Add missing check and destroy for alloc_ordered_workqueue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RXMXXJNA6RYTVQEEWL7H5D5BAAINN55D/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


On Mon, 09 Jan 2023 10:20:38 +0800, Jiasheng Jiang wrote:
> Add check for the return value of alloc_ordered_workqueue as it may return
> NULL pointer.
> Moreover, use the destroy_workqueue in the later fails in order to avoid
> memory leak.
> 
> 

Applied, thanks!

[1/1] drm/msm: Add missing check and destroy for alloc_ordered_workqueue
      https://gitlab.freedesktop.org/lumag/msm/-/commit/643b7d0869cc

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
