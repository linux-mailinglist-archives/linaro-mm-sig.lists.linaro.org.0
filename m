Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJ/qCMIa8mlyoAEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 16:50:42 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E132D4963B7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 16:50:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C0ED240498
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 14:50:32 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id C63F83F843
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2026 09:21:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=J1rHlRNe;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=YKD5OAzW;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63S60RO1241654
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2026 09:21:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uVa5aELi8oMy5IN5qMbJc9fv
	wjHh1VOUvgLucaocG9g=; b=J1rHlRNedvYMBPu+kQJFq8obDoBh6bHtsfLGahz2
	hlQdCu+A6u3y7mjNloWouF+t4ISvCbX70e/l5X26Ljg2HnbVteXVnmUdaj70LAwr
	Se5keSzn6OCCgB6kTKCD9qIvIHkO03HYe3XZFCyixRkDWuJsXVxeHgm9aT3NtzNN
	F9k59gi5dAEG//R2LTnCsJS+rxYudLoQgLQRrtgEkNzmE0fUyzlJ5d87WPw51qs8
	LHONOWUKvpSi3Cz+8TPT5HHrXEt22Nh/a6Bdr4yu4IjaazJ6ONe5swPbm4d13sx+
	RvQnHLtGk9d4RZtOgaZOHHVy6uWmbgG2RvD9ITkBdunESQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dt946v0pp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2026 09:21:22 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50d6bf346adso146358701cf.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2026 02:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777368081; x=1777972881; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uVa5aELi8oMy5IN5qMbJc9fvwjHh1VOUvgLucaocG9g=;
        b=YKD5OAzWL9zxOyUOgoVT+T1yGpgiuAzsKfc1gUgQkdNgqfX2/bKAN7JoH/mE6pKqbM
         9sowh6wKJcBM9E0cQ3eIlP4Lz6JaIi1w+wdDfLHy9dcFdSUeh5iEWEYcFzoOBkA2AYON
         FDvRw/cTAzWe/HsNEeXaIDH6lC+blzhkvh73phg+GOLp4kFsjaINicp2Yfg0SMF7g4WP
         8UauA9QWNQo8bkkTAUOQS4vhuvJwP19QsuMZVvNZpIPeS9wXWb3MlEmub/gtg+VDrD/U
         qTxte0opbg0msoYTHefUuozH3VuVdGRYL/9oQBJT0hVNFnoTg+Kvd2Vg/lH7Z5WpEq83
         eTNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777368081; x=1777972881;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uVa5aELi8oMy5IN5qMbJc9fvwjHh1VOUvgLucaocG9g=;
        b=A59CqNTTCZxWfhrE5NpD3XjWkifEyu4q0cB2bnBPiueZIxCAiT0u0v5Ig8r3zWmqMu
         zV7frRpuQm0CrAJY9ZFDG08diTZw/xgLqOIoyc2FquhhdF4r/C9PAlgRCdkMUq8HNUDH
         kJfTSY+dzE2MJNRljqN+f0dae9DH8Q1PpFpAvnA1jP8x8+NvdsGOOApJKK0XUhjgdfQR
         geis1aPwzb0zxw4+b2onL3buDRDJwFRnMuleIzv4WZact08qpQTndNhcNCGBG6I6wXD/
         sD2nxF8yKGEirIjN/n3u1duecjjYFZc52Prz4hqUJPZJ6yAqtgs/ko13Wb2i4GMLWf1J
         HHWg==
X-Forwarded-Encrypted: i=1; AFNElJ8/M+xJUChcxyVL+wRkN8lDMgg9BmCKxL5RbVcTOVoTirD+g0s/zmNBVwsdLH+c/Wzd/NRI6kYzylTu+Adk@lists.linaro.org
X-Gm-Message-State: AOJu0YxlX8TeQAEIzxgcgomXkElShb/tBOarsajnE4Q3kh4F4xBt36L2
	2AvuUmFrx7jV/TpqcIcZtNMsd7uS82vVGL7iF6Gay6WPju83Z/eJuFDcBWthqWzU48JYkpKGGeP
	Z26pEQ+9aSe+dgDuGNdjX0JpGT/rPrE/E/CKyyNeOh4mQjdmBRWsQCVQqx+iYGrS0ZaAAEw==
X-Gm-Gg: AeBDies7PlHFkkGesOWh/jmddbbQ8JJhRvJsgHRlYSeXJ10pP78IzcdbK9SubQCGgnN
	ZGgYK0+tiuIqraATlWG0mST8OP4KK3VMhfZYTEkc9BTu2og9gZINhu14jILs/O/o3Pp1DFwPx4v
	GFiMMhQD/LbN/Ai35kP1nfKrIBtnJkzVaJEL+UfyXg9EI9+D0ZMXW1d+Gt75w3dUddO8pERLtbB
	54gazE4boE4GdRhyz6pc+TEi/gJfIFs7PwcS5c/x1XYYzOHdRLRvuE98EHdQD5krMlzK9p3VI9M
	nMnPr4OaAF58qbmE56gcse+3+BMwHJl1do83W3aPnuQdfd/fcd8vSmYT9LP/yD4VWf9BrbqKh9b
	33XW1LbQtUbQrPZ3DhAgTN2MLP4ZaN21+4BfEOwyCqW+zZKYb1ToYCUdrJ26bMfBrcOPC9F2DTh
	NwFxbg+03NX6Jc767LWi5KNqXc9S3FqSInBknp+LyOgkeYug==
X-Received: by 2002:ac8:57cd:0:b0:50f:c117:1c52 with SMTP id d75a77b69052e-5100e0f6951mr26863521cf.4.1777368081351;
        Tue, 28 Apr 2026 02:21:21 -0700 (PDT)
X-Received: by 2002:ac8:57cd:0:b0:50f:c117:1c52 with SMTP id d75a77b69052e-5100e0f6951mr26863341cf.4.1777368080872;
        Tue, 28 Apr 2026 02:21:20 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a7462d5821sm470542e87.33.2026.04.28.02.21.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2026 02:21:19 -0700 (PDT)
Date: Tue, 28 Apr 2026 12:21:16 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Amirreza Zarrabi <amirreza.zarrabi@oss.qualcomm.com>
Message-ID: <ljfhoo5o45m3t5fsqypg75c46qohvszd5azcqxyjdcr5unx7ob@vcgip4yzkmmn>
References: <20250910-qcom-tee-using-tee-ss-without-mem-obj-v11-0-520e867b3d74@oss.qualcomm.com>
 <20250910-qcom-tee-using-tee-ss-without-mem-obj-v11-8-520e867b3d74@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250910-qcom-tee-using-tee-ss-without-mem-obj-v11-8-520e867b3d74@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=YcWNIQRf c=1 sm=1 tr=0 ts=69f07c12 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=KKAkSRfTAAAA:8
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=yhmqyPtzb8d5NndqWuMA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Rf2dA66RpHf2MRDX_ZsI4nEP3MaZKRgo
X-Proofpoint-ORIG-GUID: Rf2dA66RpHf2MRDX_ZsI4nEP3MaZKRgo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI4MDA4MiBTYWx0ZWRfX+VJbjTTw1JG0
 2V/tc4HvsRzqiawh6lzrnG8R+//wfkRf7ndcrBYtFjMQ6Myj11/0rqntz9UOVb4O6wXLaWsl2Ce
 QdaJdG3zhfB6a9Yc/cjcOePNP9HUdxqPEwRVlmUVAqZtP9QpBsXLCsm3hyUtM7+N2wewtHxncE3
 OcYfcSoFnEOSvKzSQr1Q5c+p0eVC8BYy3oGYkBHe/VK3ApTwiS7a0UWKNK7KaO51Xr7mlatw0x6
 wg+VgzvoM+CnJoe/npNGqhQzbQJIlAWrv5gGAgd677euXhtZSeVo4UsDh6nUKuqax858RqD4c0H
 vxDkM8cv9yGvXmGW12CF+7eFugL6/5PMqE02pvzwkM+baata0yJFUFCAO26NmhixkzcP4TUVDJA
 oPSwZVnsWc79ft3js2qYUeXhDn8XMFMUuzZ9Xx+ps5i1BCwcrtmc05gOzZV+J3X/MS3z6GEItKo
 hDrnxEShn+igmoa0SAA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-28_02,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 clxscore=1015 spamscore=0 malwarescore=0
 adultscore=0 impostorscore=0 phishscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2604280082
X-Spamd-Bar: -----
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: I7NRCLW3QATOAVDFOJT2WRP3BVSWRGPK
X-Message-ID-Hash: I7NRCLW3QATOAVDFOJT2WRP3BVSWRGPK
X-Mailman-Approved-At: Wed, 29 Apr 2026 14:29:27 +0000
CC: Jens Wiklander <jens.wiklander@linaro.org>, Sumit Garg <sumit.garg@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Apurupa Pattapu <quic_apurupa@quicinc.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Harshal Dev <quic_hdev@quicinc.com>, linux-arm-msm@vger.kernel.org, op-tee@lists.trustedfirmware.org, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, Sumit Garg <sumit.garg@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v11 08/11] tee: add Qualcomm TEE driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/I7NRCLW3QATOAVDFOJT2WRP3BVSWRGPK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: E132D4963B7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[29];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:-,oss.qualcomm.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.965];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,linaro.org:email]

On Wed, Sep 10, 2025 at 08:41:21PM -0700, Amirreza Zarrabi wrote:
> Introduce qcomtee_object, which represents an object in both QTEE and
> the kernel. QTEE clients can invoke an instance of qcomtee_object to
> access QTEE services. If this invocation produces a new object in QTEE,
> an instance of qcomtee_object will be returned.
> 
> Similarly, QTEE can request services from by issuing a callback
> request, which invokes an instance of qcomtee_object.
> 
> Implement initial support for exporting qcomtee_object to userspace
> and QTEE, enabling the invocation of objects hosted in QTEE and userspace
> through the TEE subsystem.
> 
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org>
> Tested-by: Harshal Dev <quic_hdev@quicinc.com>
> Acked-by: Sumit Garg <sumit.garg@oss.qualcomm.com>
> Signed-off-by: Amirreza Zarrabi <amirreza.zarrabi@oss.qualcomm.com>
> ---
>  MAINTAINERS                          |   6 +
>  drivers/tee/Kconfig                  |   1 +
>  drivers/tee/Makefile                 |   1 +
>  drivers/tee/qcomtee/Kconfig          |  12 +
>  drivers/tee/qcomtee/Makefile         |   7 +
>  drivers/tee/qcomtee/async.c          | 182 +++++++
>  drivers/tee/qcomtee/call.c           | 813 +++++++++++++++++++++++++++++++
>  drivers/tee/qcomtee/core.c           | 906 +++++++++++++++++++++++++++++++++++
>  drivers/tee/qcomtee/qcomtee.h        | 143 ++++++
>  drivers/tee/qcomtee/qcomtee_msg.h    | 304 ++++++++++++
>  drivers/tee/qcomtee/qcomtee_object.h | 316 ++++++++++++
>  drivers/tee/qcomtee/shm.c            | 153 ++++++
>  drivers/tee/qcomtee/user_obj.c       | 692 ++++++++++++++++++++++++++
>  include/uapi/linux/tee.h             |   1 +
>  14 files changed, 3537 insertions(+)
> 
> +
> +static int
> +qcomtee_object_invoke_ctx_invoke(struct qcomtee_object_invoke_ctx *oic,
> +				 int *result, u64 *res_type)
> +{
> +	phys_addr_t out_msg_paddr;
> +	phys_addr_t in_msg_paddr;
> +	int ret;
> +	u64 res;
> +
> +	tee_shm_get_pa(oic->out_shm, 0, &out_msg_paddr);
> +	tee_shm_get_pa(oic->in_shm, 0, &in_msg_paddr);
> +	if (!(oic->flags & QCOMTEE_OIC_FLAG_BUSY))
> +		ret = qcom_scm_qtee_invoke_smc(in_msg_paddr, oic->in_msg.size,
> +					       out_msg_paddr, oic->out_msg.size,
> +					       &res, res_type);
> +	else
> +		ret = qcom_scm_qtee_callback_response(out_msg_paddr,
> +						      oic->out_msg.size,
> +						      &res, res_type);
> +
> +	if (ret)
> +		pr_err("QTEE returned with %d.\n", ret);
> +	else
> +		*result = (int)res;

After enablign QCOMTEE driver, I observe the following error during the
bootup on RB3 Gen2:

[    4.720777] qcomtee: QTEE returned with -22.
[    4.725251] qcomtee: QTEE version 0.0.0


> +
> +	return ret;
> +}
> +

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
