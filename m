Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD336DD57D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Apr 2023 10:30:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F07773E975
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Apr 2023 08:30:38 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 79CDF3E8F3
	for <linaro-mm-sig@lists.linaro.org>; Fri,  7 Apr 2023 17:38:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=M0dcZC1P;
	spf=pass (lists.linaro.org: domain of andersson@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=andersson@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1124B652B1;
	Fri,  7 Apr 2023 17:38:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1B8EC4339E;
	Fri,  7 Apr 2023 17:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680889123;
	bh=ShYE/NmpoSW62Nvk+UDzbzXRAyY8hKK3U9ol2L/cDjg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=M0dcZC1PwRN2HkRpAf18Y8Sc3xtdV99EC+vxYRCkvNNAP+f919nIOyOf5C1k+lysA
	 DsIPR1Qt8nC4oUYnjInR8TIxqXfTv7etNNAZFIr8N3Z4pgJcnzOnfgGSt+8WWdyUnl
	 AtCK3R+vmetr+XaPeV8TeeBy7ElBS52aIWcd/f+6IC92wBZ6VtySpHzS+akBWGLAPm
	 9FGQ7rTD0MB43HTwT8UqysfMbMPTFlPqN0cgjcBIFUJ0L4OURVzzGJE92PFWqiUUkv
	 QzbufEidnsWI3M3Syk9Vjk2T1AbA0NyhHej5ZBtJs+zEboLXJ09NMin4l6aPtNNsSc
	 ndslYUpGWzB9w==
From: Bjorn Andersson <andersson@kernel.org>
To: dri-devel@lists.freedesktop.org,
	Rob Clark <robdclark@gmail.com>
Date: Fri,  7 Apr 2023 10:41:19 -0700
Message-Id: <168088927578.2561591.14585371270684166515.b4-ty@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230320144356.803762-1-robdclark@gmail.com>
References: <20230320144356.803762-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 79CDF3E8F3
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_TO(0.00)[lists.freedesktop.org,gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[linux-m68k.org,gmail.com,linaro.org,quicinc.com,somainline.org,chromium.org,z3ntu.xyz,poorly.run,kernel.org,vger.kernel.org,lists.linaro.org,ffwll.ch,lists.freedesktop.org,joelfernandes.org];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[23];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-MailFrom: andersson@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UKAJ4MT26HF5ZL2J2Z3OLH3W2SIDGXFT
X-Message-ID-Hash: UKAJ4MT26HF5ZL2J2Z3OLH3W2SIDGXFT
X-Mailman-Approved-At: Tue, 11 Apr 2023 08:30:22 +0000
CC: Geert Uytterhoeven <geert@linux-m68k.org>, Maximilian Luz <luzmaximilian@gmail.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Akhil P Oommen <quic_akhilpo@quicinc.com>, Konrad Dybcio <konrad.dybcio@somainline.org>, Douglas Anderson <dianders@chromium.org>, Luca Weiss <luca@z3ntu.xyz>, Sean Paul <sean@poorly.run>, Nathan Chancellor <nathan@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, "open list:DEVICE FREQUENCY DEVFREQ" <linux-pm@vger.kernel.org>, Rob Clark <robdclark@chromium.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Daniel Vetter <daniel@ffwll.ch>, freedreno@lists.freedesktop.org, "Joel Fernandes (Google)" <joel@joelfernandes.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH v2 00/23] drm/msm+PM+icc: Make job_run() reclaim-safe
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UKAJ4MT26HF5ZL2J2Z3OLH3W2SIDGXFT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, 20 Mar 2023 07:43:22 -0700, Rob Clark wrote:
> From: Rob Clark <robdclark@chromium.org>
> 
> Inspired by https://lore.kernel.org/dri-devel/20200604081224.863494-10-daniel.vetter@ffwll.ch/
> it seemed like a good idea to get rid of memory allocation in job_run()
> fence signaling path, and use lockdep annotations to yell at us about
> anything that could deadlock against shrinker/reclaim.  Anything that
> can trigger reclaim, or block on any other thread that has triggered
> reclaim, can block the GPU shrinker from releasing memory if it is
> waiting the job to complete, causing deadlock.
> 
> [...]

Applied, thanks!

[20/23] soc: qcom: smd-rpm: Use GFP_ATOMIC in write path
        commit: 5808c532ca0a983d643319caca44f2bcb148298f

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
