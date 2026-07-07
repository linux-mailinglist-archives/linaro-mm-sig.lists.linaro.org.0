Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KCzFAaZwVmpe5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:23:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F977575EB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:23:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b=go+XicZp;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B15A940A4C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:23:48 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 65BFB4014D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Jul 2026 12:07:44 +0000 (UTC)
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6678DkUU3138642
	for <linaro-mm-sig@lists.linaro.org>; Tue, 7 Jul 2026 12:07:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TSZCpVJgYGNPn1Ohux957EKWIlXyg6nTTccZRFciuH0=; b=go+XicZpWJFxQRlD
	q0EUzpDkuXG7BOzDsO3p6LrAZ8TKf4BxfuGYViRgyBuKbXB7E/XEb+yH0WLd3QBh
	9YtUZFlHi+9sxl9rVRRpjZeYEPSb9fuOlOE+7d2pBtrvGAZVqxopGXu7PzFWFKyF
	XEfkDfk7Xaz6V2dtpmj4qWI6JkeW/KU7JQOaAr4skymQA0gVc71JaaTujABrld3K
	z5HOWBuaqA7JEBugDGD0atRrgsTkdrNCwdnze1jKdYzSvmAZFsQgCMpvuxWMhLAE
	sXjDGV1VD1HkALkWTxiPC5pjx+m7s/Xt0yzsCGNv5xWx2DdjnTqX16bjqLN5QJx4
	e4RvZg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f8t159uxy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Jul 2026 12:07:43 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-845df469a26so11129697b3a.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Jul 2026 05:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783426063; x=1784030863; darn=lists.linaro.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TSZCpVJgYGNPn1Ohux957EKWIlXyg6nTTccZRFciuH0=;
        b=io1GbiDt6r4c7+zhUt+XrGkPgJMZrorTf6743Ah5nj9VhL44UHf0IL+dPxOX7at4Fl
         isbJ+lAz5BMlncj6/VDgihXGDBLRf9zTHDX+yglzEYJ8TSbwHP+1ZiXCs4udxCIXrftH
         zWM2DPuR0tHtsCRyQTs/QZGgCDz5IAeRwOZGKd/lvHE3JoDPdm7o0bZ0b4Q+uhGHbxI8
         eu63k+E3sC7nxQxvAXjjKlB5ToUHIrYX0zPo/qGthnTJ19SkKsStC9wPXWDPnjy9LW7R
         184+NW0G9TOAIUB9K85N1jrGee07QnKX1E9ZBJFrNN6aRJa1FqP3MjdVAVHTgGn7j0iL
         2QpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783426063; x=1784030863;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TSZCpVJgYGNPn1Ohux957EKWIlXyg6nTTccZRFciuH0=;
        b=HrWTqd4Q6WB4pkDLrY1hWOT9LCu2yfWRdWOCOYHsilustFQAJC23+pQ//cpjCPc+Cz
         nUDJjidS6qdVAuTpxoLCsBAGGHBmojmMdkNeaUGbk160WtygxQqyyVWK7snzE/lbZuVC
         dOzQIIaWtE1qVDbQeWTW7LF2xQuP4+lRBD02C3pV5oltJfdo8LUuLy6T1QBJUi4DyfbW
         36mfknoqvuuyb4A10OIW5JfpY+ybWuQ0RgVK/NAJvWuMf+Kd/b6QSA7W9Qm6WHyqCvCj
         VAcbKDT3bVljB9RQ65cT8cwnkFIiiiS9/mveMqdTUwMm13J8rXFqRtxfFWv2HTLG+poC
         fMyQ==
X-Forwarded-Encrypted: i=1; AHgh+Rrf5IMpQ50z8rTmPMGTUlBgaU0F2I1krWV2UqcIDXvIvAc5vIzGz4phHiQIGVpj3tg2JxqL2P01gWZzHujS@lists.linaro.org
X-Gm-Message-State: AOJu0YyHso7MgxiwgstyQD4pLHI9+sB3sHQ1s9bXTlPXQzbqyE7mw5IY
	+3DevNSc5QLU/F0xzAa0srFD3qZWBAo3QzbO2VWa5y7c4NP/OKZ0EpqJ1Cfo7XywgRAoacx9VdQ
	wHMN/rltDOU5mNWdV5JnR4JdJhesJUYj2adF7F0JUnTEZT0rXfr+kFUPqYGn5KWFWfZCBZw==
X-Gm-Gg: AfdE7cm9dBzEInSgwgqi+BpUO4MVV6NQEvpTyZZWxfow+o6f0EPypprFK1n3bKa9yPV
	rglluLENxeg/qJC32qHKRArO22nK5ZehW7M/q9PS4PiWXDBxY2WRaGpniDoQ4FXrE3OUyg3QZKH
	ebZMmeFiv5Xn3eHVtIZ7by2hI/eqQrrzPnS0eDp+JCxWJfs5XOhnGXg2hrbUkHNVVRRb3EGBgtG
	8TF02pAxNw4RHp3ImWcdwLaxu194zaw5lJDnvLvSbQLVgNEviM8+mT4P+9/dtRFrLlz+IOttQ6T
	YO1NCRFYcS/3H3HkIXL+LyrCAoDxEv+s4d04l4XwYCtrly+dySkJbgtV6qw9M5Q4fw+qqncofUG
	HRgQI2ollWtSo68mP7pGPhMmCTZdcPC8WjHSyvaxDC/dT
X-Received: by 2002:aa7:9a88:0:b0:82f:9407:d167 with SMTP id d2e1a72fcca58-84826db0b6emr4883533b3a.38.1783426062779;
        Tue, 07 Jul 2026 05:07:42 -0700 (PDT)
X-Received: by 2002:aa7:9a88:0:b0:82f:9407:d167 with SMTP id d2e1a72fcca58-84826db0b6emr4883488b3a.38.1783426062170;
        Tue, 07 Jul 2026 05:07:42 -0700 (PDT)
Received: from [10.217.219.87] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847f6dbfd41sm5359873b3a.57.2026.07.07.05.07.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jul 2026 05:07:40 -0700 (PDT)
Message-ID: <81e84294-b438-415d-82ef-a523c4381eb4@oss.qualcomm.com>
Date: Tue, 7 Jul 2026 17:37:35 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aniket Randive <aniket.randive@oss.qualcomm.com>,
        viken.dadhaniya@oss.qualcomm.com, andi.shyti@kernel.org,
        sumit.semwal@linaro.org, christian.koenig@amd.com
References: <20260705135739.4038826-1-aniket.randive@oss.qualcomm.com>
Content-Language: en-US
From: Mukesh Savaliya <mukesh.savaliya@oss.qualcomm.com>
In-Reply-To: <20260705135739.4038826-1-aniket.randive@oss.qualcomm.com>
X-Proofpoint-GUID: rnkbDNgUKRaT60uaRxArJiJohwf1ZD4m
X-Authority-Analysis: v=2.4 cv=HstG3UTS c=1 sm=1 tr=0 ts=6a4cec0f cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=5YGwSrtyFkuD1B6sRKIA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: rnkbDNgUKRaT60uaRxArJiJohwf1ZD4m
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA3MDExNyBTYWx0ZWRfXzDH3Qognba7r
 JtT18mnqDogzSoFqxIxC6wyr0bGiNCyyIAJ+fWZAocLN/h3/d1OqwEM9653ANYSa6ecwc+/HyN0
 2Yu0e0As0HB2CoykCf5BEUnor01YdGk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA3MDExNyBTYWx0ZWRfX/79Q70r8cot8
 J6/cUGlDB+XPwQqZgGfs6P4TsY24Aej9McD73HYxgiNItN7b3+JPwC7mQ3iJ6QCYeY0gRGWe0ix
 d/iWYcnFImtv4PDojTYgTSqMFWtYO/HSFmED95+6zi4Mx9D1j7rzEf13sv58T1B6XyV6sSh8W8c
 UCTESDfoVpea1jd/ds36u/T1EBels0J/yZy9P8kIVw6lU+K94x5LFillogig0zuZOiGQSani8B1
 v6ce8LTqXC3RAcH2Fbo9P36TsPSBiIZq6eV45nKd5WYyFUcOsNIdR681PjOMVo4frF0s98LyK4J
 Y3YLzXq9TkFNiyEGtMorK99PImIsUEywcKINEXYo1y31QfaRP6lK1pS496ecUCEwVZRBGKromrk
 HIZnBYHqLd44jepA8I6Fme+zc+bSAUkV1VFtImy6aCTxlftpvXD9KPBMNU7USZ9b4ZIutPSPSjx
 DyyZ8U2ej2jrxLcKeSA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-07_02,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 spamscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607070117
X-Spamd-Bar: ----
X-MailFrom: mukesh.savaliya@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YVEKDVD32ALSSN3ENMPX5AGIFLP5BM2E
X-Message-ID-Hash: YVEKDVD32ALSSN3ENMPX5AGIFLP5BM2E
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:18:31 +0000
CC: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, naresh.maramaina@oss.qualcomm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] i2c: qcom-geni: Add dynamic transfer timeout based on transfer length and frequency
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YVEKDVD32ALSSN3ENMPX5AGIFLP5BM2E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[173];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aniket.randive@oss.qualcomm.com,m:viken.dadhaniya@oss.qualcomm.com,m:andi.shyti@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:linux-i2c@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:naresh.maramaina@oss.qualcomm.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[mukesh.savaliya@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[mukesh.savaliya@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,oss.qualcomm.com:from_mime,oss.qualcomm.com:mid,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 90F977575EB



On 7/5/2026 7:27 PM, Aniket Randive wrote:
[...]

>   static int qcom_geni_i2c_conf(struct geni_se *se, unsigned long freq)
>   {
>   	struct geni_i2c_dev *gi2c = dev_get_drvdata(se->dev);
> @@ -471,7 +484,7 @@ static int geni_i2c_rx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
>   	}
>   
>   	cur = gi2c->cur;
> -	time_left = wait_for_completion_timeout(&gi2c->done, XFER_TIMEOUT);
> +	time_left = wait_for_completion_timeout(&gi2c->done, geni_i2c_xfer_timeout(gi2c, len));
Simplify with timeout = geni_i2c_xfer_timeout(gi2c, len) and use as an arg ?
>   	if (!time_left)
>   		geni_i2c_abort_xfer(gi2c);
>   
> @@ -513,7 +526,7 @@ static int geni_i2c_tx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
>   		writel_relaxed(1, se->base + SE_GENI_TX_WATERMARK_REG);
>   
>   	cur = gi2c->cur;
> -	time_left = wait_for_completion_timeout(&gi2c->done, XFER_TIMEOUT);
> +	time_left = wait_for_completion_timeout(&gi2c->done, geni_i2c_xfer_timeout(gi2c, len));
>   	if (!time_left)
>   		geni_i2c_abort_xfer(gi2c);
>   
> @@ -591,7 +604,7 @@ static void geni_i2c_gpi_multi_desc_unmap(struct geni_i2c_dev *gi2c, struct i2c_
>    * geni_i2c_gpi_multi_xfer_timeout_handler() - Handles multi message transfer timeout
>    * @dev: Pointer to the corresponding dev node
>    * @multi_xfer: Pointer to the geni_i2c_gpi_multi_desc_xfer
> - * @transfer_timeout_msecs: Timeout value in milliseconds
> + * @transfer_timeout_msecs: Per-message completion timeout in jiffies
>    * @transfer_comp: Completion object of the transfer
>    *
>    * This function waits for the completion of each processed transfer messages
> @@ -601,7 +614,7 @@ static void geni_i2c_gpi_multi_desc_unmap(struct geni_i2c_dev *gi2c, struct i2c_
>    */
>   static int geni_i2c_gpi_multi_xfer_timeout_handler(struct device *dev,
>   						   struct geni_i2c_gpi_multi_desc_xfer *multi_xfer,
> -						   u32 transfer_timeout_msecs,
> +						   unsigned long timeout_jiffies,
>   						   struct completion *transfer_comp)
>   {
>   	int i;
> @@ -612,7 +625,7 @@ static int geni_i2c_gpi_multi_xfer_timeout_handler(struct device *dev,
>   
>   		if (multi_xfer->msg_idx_cnt != multi_xfer->irq_cnt) {
>   			time_left = wait_for_completion_timeout(transfer_comp,
> -								transfer_timeout_msecs);
> +								timeout_jiffies);
>   			if (!time_left) {
>   				dev_err(dev, "%s: Transfer timeout\n", __func__);
>   				return -ETIMEDOUT;
> @@ -736,8 +749,15 @@ static int geni_i2c_gpi(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[],
>   		dma_async_issue_pending(gi2c->tx_c);
>   
>   		if ((msg_idx == (gi2c->num_msgs - 1)) || flags & DMA_PREP_INTERRUPT) {
> +			size_t max_len = 0;
> +			int j;
> +
> +			for (j = 0; j < gi2c->num_msgs; j++)
> +				max_len = max_t(size_t, max_len, msgs[j].len);
> +
>   			ret = geni_i2c_gpi_multi_xfer_timeout_handler(gi2c->se.dev, gi2c_gpi_xfer,
> -								      XFER_TIMEOUT, &gi2c->done);
> +								      geni_i2c_xfer_timeout(
> +								      gi2c, max_len), &gi2c->done);
Simplify with timeout = geni_i2c_xfer_timeout(gi2c, len) and use as an arg ?
>   			if (ret) {
>   				dev_err(gi2c->se.dev,
>   					"I2C multi write msg transfer timeout: %d\n",
> @@ -852,7 +872,8 @@ static int geni_i2c_gpi_xfer(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[], i
>   
>   		if (!gi2c->is_tx_multi_desc_xfer) {
>   			dma_async_issue_pending(gi2c->tx_c);
> -			time_left = wait_for_completion_timeout(&gi2c->done, XFER_TIMEOUT);
> +			time_left = wait_for_completion_timeout(&gi2c->done, geni_i2c_xfer_timeout(
> +								gi2c, msgs[i].len));
>   			if (!time_left) {
>   				dev_err(gi2c->se.dev, "%s:I2C timeout\n", __func__);
>   				gi2c->err = -ETIMEDOUT;

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
