Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DB293BBC7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jul 2024 06:33:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4F4A34412C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jul 2024 04:33:25 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	by lists.linaro.org (Postfix) with ESMTPS id 7C57242540
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Jul 2024 04:33:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=oQwx2ok+;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.128.181 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-65fe1239f12so4435267b3.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jul 2024 21:33:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721881981; x=1722486781; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rDFqw6oHHPxpfXtOUHUn1IVLUDP2YjdBprOP06yJvHQ=;
        b=oQwx2ok+caEYwRXRq4hFW/JRM4bOVPqB41AVNr+tbeP2tKLzFMpP6HfDTbpgxluTQ/
         k5RrlIWM0webyq/XRg54nnUUZkvP/rAjttgifPtLuCzEDKat8yWtNZlaRS9Ws1cQ039r
         RBH01gbVQhC3da7bJTNte+T9vJYPGhLjH6XJCLe7DZ5IUrjI1h1XGya6HEfmc3tLSyxT
         Vlkpv4YXAv0vYleh7Tx2nIROAGUKr+AqbSa81uUxIkJedKjrrMCcT0mzuLHTYD3Ela3H
         kbyxcu+osjRMRXuiZ0ehXOYFaesoufrpjP4cO04W3ZFzWQyCrQGM6830pMtW3uorkjL4
         EfrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721881981; x=1722486781;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rDFqw6oHHPxpfXtOUHUn1IVLUDP2YjdBprOP06yJvHQ=;
        b=JMh9zjOn+/JqxBYfT4uGDu8flwAUElKpTjm11esNmtkxyBYlj8XSKb/7xX9KUhWaEU
         i0VB8Pt8Vex5DUgS/Sfn6EfiCv0FtHk9JqanWPhQ6dVnKjphm3xOaoOrX+D4UsQ19tsC
         al3LuNCvgNsFugnM8cNR4ACc35e/rz+boUGD3JlBuA1nWQZTQqN90CCJ7SfE7H2eZCl6
         WyUM28A6/UBIrobtyLVkk7Gtfe1J6r3qebHKWygYdquG1iBp7161+5o2zvyvpRcUfzX/
         iSEF43+gwSEpnAGuIPXF6roG7n0IQ46goofyNcm/2wMERRoaO8RXLVH/gTcGfBDoNqqU
         QMow==
X-Forwarded-Encrypted: i=1; AJvYcCXfTdh6zQOB9O7+3TsW2NeKOY06Pr2USTlZO+A0mlLilzV+3CZvSVwF0WmURY5wzdho2yIpUnm/KvTnk57T9qVgdz+i31qHiNsiaU+lajc=
X-Gm-Message-State: AOJu0YyWKsfmFEDYrC4jakqJS8y5Ed3v9biIy+9Pmfow/ReiDAAjlz/9
	y/3/ME1+HmbbNTvrGluqdvifl6BrIDlny1TqRFsgfCh0PcowlIp/bwDJMQ/5wb5/iL0gq6vInwQ
	3td1p9sSu7VkD3rhoTIFp1VeVMjLm+CkdSvFmnU31
X-Google-Smtp-Source: AGHT+IHUKsyqw7tG3OOmxBx8cB5eWQECQmicrTjKE/6hNnrXGqghpEGBVp8H937CrHq2VeWgvBoopVddULDaspRFEXw=
X-Received: by 2002:a0d:e701:0:b0:669:e266:2c55 with SMTP id
 00721157ae682-6751082c4e4mr17035787b3.5.1721881980943; Wed, 24 Jul 2024
 21:33:00 -0700 (PDT)
MIME-Version: 1.0
References: <20240702-qcom-tee-object-and-ioctls-v1-0-633c3ddf57ee@quicinc.com>
 <20240702-qcom-tee-object-and-ioctls-v1-1-633c3ddf57ee@quicinc.com>
 <ink4tq3wk2jkpybiisaudkun3g2x2drfogrdw43zdpi6yh2u5g@yrvrxzxsi46g>
 <836dab13-9c59-4d87-a600-a0be6506deb2@quicinc.com> <CAA8EJprp2veCaQq8GsYv4Mu1HQbx8nWv0XWtxcE4cu5kxkA16w@mail.gmail.com>
 <f9e5ef49-754c-4d97-8186-634674151b2f@quicinc.com> <gtdr5s7yih7pjuhpfkjmlu2lflya4heiph4wi446rlbxduqlya@5xfix7dyocli>
 <a1f4457a-2313-4d75-9857-0d82cd502343@quicinc.com>
In-Reply-To: <a1f4457a-2313-4d75-9857-0d82cd502343@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 25 Jul 2024 07:32:49 +0300
Message-ID: <CAA8EJpojNj0wB1aG3JWBc3AVGAUH7foShiWsX4MYdkYJLWRn8Q@mail.gmail.com>
To: Amirreza Zarrabi <quic_azarrabi@quicinc.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7C57242540
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.98%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.181:from];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	URIBL_BLOCKED(0.00)[linaro.org:dkim,quicinc.com:email,mail.gmail.com:mid];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: F6IP2R3G7SDPFQPRINXA2SBLJGAFBSVV
X-Message-ID-Hash: F6IP2R3G7SDPFQPRINXA2SBLJGAFBSVV
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, srinivas.kandagatla@linaro.org, bartosz.golaszewski@linaro.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 1/3] firmware: qcom: implement object invoke support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F6IP2R3G7SDPFQPRINXA2SBLJGAFBSVV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, 25 Jul 2024 at 07:15, Amirreza Zarrabi
<quic_azarrabi@quicinc.com> wrote:
>
>
>
> On 7/25/2024 2:09 PM, Dmitry Baryshkov wrote:
> > On Thu, Jul 25, 2024 at 01:19:07PM GMT, Amirreza Zarrabi wrote:
> >>
> >>
> >> On 7/4/2024 5:34 PM, Dmitry Baryshkov wrote:
> >>> On Thu, 4 Jul 2024 at 00:40, Amirreza Zarrabi <quic_azarrabi@quicinc.com> wrote:
> >>>>
> >>>>
> >>>>
> >>>> On 7/3/2024 10:13 PM, Dmitry Baryshkov wrote:
> >>>>> On Tue, Jul 02, 2024 at 10:57:36PM GMT, Amirreza Zarrabi wrote:
> >>>>>> Qualcomm TEE hosts Trusted Applications and Services that run in the
> >>>>>> secure world. Access to these resources is provided using object
> >>>>>> capabilities. A TEE client with access to the capability can invoke
> >>>>>> the object and request a service. Similarly, TEE can request a service
> >>>>>> from nonsecure world with object capabilities that are exported to secure
> >>>>>> world.
> >>>>>>
> >>>>>> We provide qcom_tee_object which represents an object in both secure
> >>>>>> and nonsecure world. TEE clients can invoke an instance of qcom_tee_object
> >>>>>> to access TEE. TEE can issue a callback request to nonsecure world
> >>>>>> by invoking an instance of qcom_tee_object in nonsecure world.
> >>>>>
> >>>>> Please see Documentation/process/submitting-patches.rst on how to write
> >>>>> commit messages.
> >>>>
> >>>> Ack.
> >>>>
> >>>>>
> >>>>>>
> >>>>>> Any driver in nonsecure world that is interested to export a struct (or a
> >>>>>> service object) to TEE, requires to embed an instance of qcom_tee_object in
> >>>>>> the relevant struct and implements the dispatcher function which is called
> >>>>>> when TEE invoked the service object.
> >>>>>>
> >>>>>> We also provids simplified API which implements the Qualcomm TEE transport
> >>>>>> protocol. The implementation is independent from any services that may
> >>>>>> reside in nonsecure world.
> >>>>>
> >>>>> "also" usually means that it should go to a separate commit.
> >>>>
> >>>> I will split this patch to multiple smaller ones.
> >>>>
> >>>
> >>> [...]
> >>>
> >>>>>
> >>>>>> +    } in, out;
> >>>>>> +};
> >>>>>> +
> >>>>>> +int qcom_tee_object_do_invoke(struct qcom_tee_object_invoke_ctx *oic,
> >>>>>> +    struct qcom_tee_object *object, unsigned long op, struct qcom_tee_arg u[], int *result);
> >>>>>
> >>>>> What's the difference between a result that gets returned by the
> >>>>> function and the result that gets retuned via the pointer?
> >>>>
> >>>> The function result, is local to kernel, for instance memory allocation failure,
> >>>> or failure to issue the smc call. The result in pointer, is the remote result,
> >>>> for instance return value from TA, or the TEE itself.
> >>>>
> >>>> I'll use better name, e.g. 'remote_result'?
> >>>
> >>> See how this is handled by other parties. For example, PSCI. If you
> >>> have a standard set of return codes, translate them to -ESOMETHING in
> >>> your framework and let everybody else see only the standard errors.
> >>>
> >>>
> >>
> >> I can not hide this return value, they are TA dependent. The client to a TA
> >> needs to see it, just knowing that something has failed is not enough in
> >> case they need to do something based on that. I can not even translate them
> >> as they are TA related so the range is unknown.
> >
> > I'd say it a sad design. At least error values should be standard.
> >
>
> Sure. But it is normal. If we finally move to TEE subsystem, this is the value that
> would be copied to struct tee_ioctl_invoke_arg.ret to pass to the caller of
> TEE_IOC_INVOKE.

Ack

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
