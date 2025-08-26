Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCEAB36ED3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Aug 2025 17:53:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F18FE45931
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Aug 2025 15:53:31 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 1CF6B443D8
	for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Aug 2025 15:52:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=JGLVLMMH;
	spf=pass (lists.linaro.org: domain of andersson@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=andersson@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9E8BA5C63F2;
	Tue, 26 Aug 2025 15:52:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A04CBC4CEF1;
	Tue, 26 Aug 2025 15:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756223543;
	bh=Xk1Dlrwmt/FVCoeY2SvxmUUDznt0F17TZQXVNjpXqaU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JGLVLMMH8ToLx3JZ3Wu5MMVqVpd3pqTHaNkGmbIW11w+Cctctg0L+EftbXxoqQp7M
	 BkEtZ5E7mvulvAYs7ZyNCxi4QPewhNjI7788w5UEasFD/bUZUSrQvA4VkUXawbNu+w
	 jw/ejM1zYsqaKpxR44FdQGFW+Iw/uooWovn1xpglrBqoYDv77E6VZS9AiMl3Ci0Pu4
	 HveOQ3TLXDTgMa83RV1/NKHhnV3pNYObIF3mvg4Yjm8LgdUCiBKnaiB9lG1oSPp/ff
	 JnjdXkx6QWQCDEAKFzgXuYKtH74rSfCeKSm611ugEfh6yZ2glKo//2Zj7Fk4iwEuUq
	 aXp5m/y0d4Zlw==
Date: Tue, 26 Aug 2025 10:52:20 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Amirreza Zarrabi <amirreza.zarrabi@oss.qualcomm.com>
Message-ID: <itpdolgmxp4ofdv3vf2ghulo7slj5wjby2tvawehihwvenbep2@ub5sdgf6gxeh>
References: <20250820-qcom-tee-using-tee-ss-without-mem-obj-v8-0-7066680f138a@oss.qualcomm.com>
 <20250820-qcom-tee-using-tee-ss-without-mem-obj-v8-6-7066680f138a@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250820-qcom-tee-using-tee-ss-without-mem-obj-v8-6-7066680f138a@oss.qualcomm.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1CF6B443D8
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15830, ipnet:139.178.80.0/21, country:NL];
	RCPT_COUNT_TWELVE(0.00)[19];
	ARC_NA(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: D25JPS4SDSKYANH747RL7N3WC552JDVW
X-Message-ID-Hash: D25JPS4SDSKYANH747RL7N3WC552JDVW
X-MailFrom: andersson@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jens Wiklander <jens.wiklander@linaro.org>, Sumit Garg <sumit.garg@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Apurupa Pattapu <quic_apurupa@quicinc.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Harshal Dev <quic_hdev@quicinc.com>, linux-arm-msm@vger.kernel.org, op-tee@lists.trustedfirmware.org, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 06/11] firmware: qcom: scm: add support for object invocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D25JPS4SDSKYANH747RL7N3WC552JDVW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Aug 20, 2025 at 04:38:53PM -0700, Amirreza Zarrabi wrote:
> diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
[..]
> +static void qcom_scm_qtee_free(void *data)
> +{
> +	struct platform_device *qtee_dev = data;
> +
> +	platform_device_unregister(qtee_dev);
> +}
> +
> +static int qcom_scm_qtee_init(struct qcom_scm *scm)
> +{
> +	struct platform_device *qtee_dev;
> +	u64 result, response_type;
> +	int ret;
> +
> +	/*
> +	 * Check if QTEE supports smcinvoke:
> +	 * This will fail due to invalid buffers, but first, it checks whether
> +	 * the call is supported in QTEE syscall handler.
> +	 * If not supported, -EIO is returned.
> +	 */
> +	ret = qcom_scm_qtee_invoke_smc(0, 0, 0, 0, &result, &response_type);
> +	if (ret == -EIO)
> +		return -EIO;
> +
> +	/* Setup QTEE interface device. */
> +	qtee_dev = platform_device_alloc("qcomtee", -1);
> +	if (!qtee_dev)
> +		return -ENOMEM;
> +
> +	qtee_dev->dev.parent = scm->dev;
> +
> +	ret = platform_device_add(qtee_dev);
> +	if (ret) {
> +		platform_device_put(qtee_dev);
> +		return ret;
> +	}

Wouldn't this work instead of the alloc + parent + add?

	qtee_dev = platform_device_alloc_data(scm->dev, "qcomtee", -1, NULL, 0);
	if (IS_ERR(qtee_dev))
		return PTR_ERR(qtee_dev);

> +
> +	return devm_add_action_or_reset(scm->dev, qcom_scm_qtee_free, qtee_dev);
> +}
> +
>  /**
>   * qcom_scm_is_available() - Checks if SCM is available
>   */
> @@ -2326,6 +2450,16 @@ static int qcom_scm_probe(struct platform_device *pdev)
>  	ret = qcom_scm_qseecom_init(scm);
>  	WARN(ret < 0, "failed to initialize qseecom: %d\n", ret);
>  
> +	/*
> +	 * Initialize the QTEE object interface.
> +	 *
> +	 * This only represents the availability for QTEE object invocation
> +	 * and callback support. On failure, ignore the result. Any subsystem
> +	 * depending on it may fail if it tries to access this interface.
> +	 */
> +	ret = qcom_scm_qtee_init(scm);
> +	dev_warn_probe(scm->dev, ret, "Failed to initialize qcomtee\n");

A successful boot of db410c (APQ8016) now has the following in the log:

[    0.161437] qcom_scm firmware:scm: error -EIO: Failed to initialize qcomtee

If the target doesn't implement qtee, I'd expect that you tell me that -
or preferably stay silent.

Looking at the other error conditions, we find -ENOMEM, for which you
should also avoid printing. In fact, I believe all other error paths of
qcom_scm_qtee_init() will have printed an error already (if not, please
move the error print to the place(s) where it's needed).

As you're ignoring the return value, please then also change the return
type of the function to void.

Regards,
Bjorn

> +
>  	return 0;
>  }
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
